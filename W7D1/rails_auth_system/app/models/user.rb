class User < ApplicationRecord
    before_validation :ensure_session_token
    validates :username, :session_token, presence: true
    # validates :password_digest, presence: {message: "Password can't be blank"}
    validates :password, length: { minimum: 5, allow_nil: true }

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        return nil if user.nil?
        user.is_password?(password) ? user : nil
    end

    def generate_unique_session_token
        not_unique = true
        while not_unique
            session_token = SecureRandom::urlsafe_base64
            return session_token unless User.exists?(session_token: session_token)
        end
    end

    def password=(pw)
        @password = pw
        password_digest = BCrypt::Password.create(@password) 
    end

    def is_password?(password)
        BCrypt::Password.new(password_digest).is_password?(password)
    end

    def reset_session_token!
        session_token = generate_unique_session_token
        self.save!
        session_token
    end

    def ensure_session_token
        self.session_token ||= generate_unique_session_token
    end

    private

    attr_reader :password, :password_digest
end
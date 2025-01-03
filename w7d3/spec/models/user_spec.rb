require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it { should validate_presence_of(:email) }
  # it { should validate_presence_of(:session_token) }
  it { should validate_presence_of(:password_digest) }
  it should validate_length_of(:password).is_at_least(7)
  # it { should validate_uniqueness_of(:session_token) }
  # it { should validate_uniqueness_of(:email) }

end


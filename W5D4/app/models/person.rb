class Person < ApplicationRecord
  validates :name, :house_id, presence: true
  
  class_name: :Person

end


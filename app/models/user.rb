class User < ApplicationRecord
  has_many :educations
  has_many :projects
  has_many :experiences
  
  has_secure_password
  validates :email, presence: true, uniqueness: true

end

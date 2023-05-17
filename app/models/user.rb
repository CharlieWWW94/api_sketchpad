class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  has_many :pads
  has_many :frames
end

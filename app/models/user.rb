class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  has_many :pads
  has_many :frames

  after_create do
    self.pads.create({
      user_id: self.id,
      name: 'My Canvasses'
    })
  end
end

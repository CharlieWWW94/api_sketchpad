class User < ApplicationRecord
  ROLES = %w{ client admin }
  has_secure_password
  validates :username, uniqueness: true
  validates :role, inclusion: { in: ROLES  }
  has_many :pads
  has_many :frames


  after_create do
    self.pads.create({
      user_id: self.id,
      name: 'My Canvasses'
    })
  end

  ROLES.each do |role_name|
    define_method "#{role_name}?" do
     self.role == role_name 
    end
  end
end

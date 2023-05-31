class Pad < ApplicationRecord
  belongs_to :user
  has_many :frames
  validates [:name, :user_id], unique: true
end

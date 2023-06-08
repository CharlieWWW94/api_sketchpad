class Pad < ApplicationRecord
  belongs_to :user
  has_many :frames, dependent: :destroy
  validates :name, uniqueness: { scope: :user_id }
end

class Profile < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  has_many :reviews, dependent: :destroy
  has_many :viewers
  has_many :users, through: :viewers

end

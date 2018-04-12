class Profile < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  has_many :reviews, dependent: :destroy
end

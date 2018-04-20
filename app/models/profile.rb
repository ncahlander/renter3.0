class Profile < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  has_many :reviews, dependent: :destroy
  has_many :viewer_accesses
  has_many :users, through: :viewer_accesses

end

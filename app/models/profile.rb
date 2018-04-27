class Profile < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  has_many :reviews, dependent: :destroy
  #has_many :viewer_accesses
  has_many :accessers, dependent: :destroy
  #has_many :users, through: :viewer_accesses


  # <%= User.find(profile.user_id).firstName %>
  # <%= User.find(profile.user_id).lastName %>
  # <%= User.find(profile.user_id).email %>

  def self.search(search)
    where("id LIKE ? OR firstName LIKE ?", "%#{search}%", "%#{search}%")
  end

end

class Review < ApplicationRecord #//inherets from
  belongs_to :user
  belongs_to :profile #the tenant reviewed
  #validates :user_id, presence: true
  #validates :profile_id, presence: true
  has_many :comments #makes it possible to have multiple comments on review
  validates :notice, presence: true
  validates_inclusion_of :notice, in: ["true", "false"]
  validates :rentLeft, presence: true
  if :rentLeft
    validates :rentLeftAmount, presence: true, length: { minimum: 1 }
  end
  validates :late, presence: true
  if :late
    validates :lateThreeDayNum, presence: true, length: { minimum: 1 }
    validates :latePaymentNum, presence: true, length: { minimum: 1 }
  end
  validates :nSF, presence: true
  if :nSF
   validates :nsfNum, presence: true, length: { minimum: 1 }
  end
  validates :damages, presence: true
  if :damages
   validates :damagesDescription, presence: true
  end
  validates :complaintsFiled, presence: true
  if :complaintsFiled
   validates :complaintDescription, presence: true
  end
  validates :undocumentedHousemates, presence: true
  validates :coTenants, presence: true
  validates :rentalStatus, presence: true
  validates :evicted, presence: true
  validates :rentAgain, presence: true
  validates :depositRefund, presence: true
  validates :pets, presence: true
  if :pets
    validates :petType, presence: true
  end
  validates :rentAmount, presence: true, length: { minimum: 1 }
  validates :lease, presence: true
  validates :moveIn, presence: true
  validates :moveOut, presence: true


  # alias :old_initialize :initialize
  # def initialize(attributes = nil)
  #   old_initialize(attributes)
  #   self.title = current_user.firstName
  #   self.text = "hello"



end

class Review < ApplicationRecord #//inherets from
  belongs_to :user
  belongs_to :profile #the tenant reviewed
  #validates :user_id, presence: true
  #validates :profile_id, presence: true
  has_many :comments #makes it possible to have multiple comments on review
  # validates :title, presence: true, length: { minimum: 5 }
  # # validates :notice, presence: true
  # validates_inclusion_of :notice, in: ["true", "false"]
  #
  # validates :rentLeft, presence: true
  # # if rentLeft
  #   validates :rentLeftAmount, presence: true, length: { minimum: 1 }
  # # end
  # validates :late, presence: true
  # validates :lateThreeDayNum,presence: true, length: { minimum: 1 }
  # validates :latePaymentNum, presence: true, length: { minimum: 1 }
  # validates :nSF, presence: true
  # # if nSF
  # validates :nsfNum, presence: true, length: { minimum: 1 }
  # # end
  # validates :damages, presence: true
  # # if damages
  # validates :damagesDescription, presence: true
  # # end
  # validates :complaintsFiled, presence: true
  # # if complaintsFiled
  # validates :complaintDescription, presence: true
  # # end
  # #

  # alias :old_initialize :initialize
  # def initialize(attributes = nil)
  #   old_initialize(attributes)
  #   self.title = current_user.firstName
  #   self.text = "hello"


  # validates :title, presence: true, length: { minimum: 5 }
  # validates :notice, presence: true
  # validates :rentLeft, presence: true
  # # if rentLeft
  #   validates :rentLeftAmount, presence: true, length: { minimum: 1 }
  # # end
  # validates :late, presence: true
  # validates :lateThreeDayNum,presence: true, length: { minimum: 1 }
  # validates :latePaymentNum, presence: true, length: { minimum: 1 }
  # validates :nSF, presence: true
  # # if nSF
  # validates :nsfNum, presence: true, length: { minimum: 1 }
  # # end
  # validates :damages, presence: true
  # # if damages
  # validates :damagesDescription, presence: true
  # # end
  # validates :complaintsFiled, presence: true
  # # if complaintsFiled
  # validates :complaintDescription, presence: true
  # # end
  # validates :undocumentedHousemates, presence: true
  # validates :coTenants, presence: true
  # validates :rentalStatus, presence: true
  # validates :evicted, presence: true
  # validates :rentAgain, presence: true
  # validates :depositRefund, presence: true
  # validates :pets, presence: true
  # validates :rentAmount, presence: true, length: { minimum: 1 }
  # validates :lease, presence: true










end

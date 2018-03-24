class Review < ApplicationRecord #//inherets from
  has_many :comments #makes it possible to have multiple comments on review
  validates :title, presence: true, length: { minimum: 5 }
end

class Accesser < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :profile
end

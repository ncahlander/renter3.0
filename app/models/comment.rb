class Comment < ApplicationRecord
  belongs_to :review
  #sets up an Active Record association
  #creates a new column on your database table with the provided model name appended with an id
end

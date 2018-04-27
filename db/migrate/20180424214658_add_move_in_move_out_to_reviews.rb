class AddMoveInMoveOutToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :moveIn, :date
    add_column :reviews, :moveOut, :date
  end
end

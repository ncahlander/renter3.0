class AddUserInfoToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :user_id, :integer
    add_index :reviews, :user_id
    add_column :reviews, :profile_id, :integer
    add_index :reviews, :profile_id
  end
end

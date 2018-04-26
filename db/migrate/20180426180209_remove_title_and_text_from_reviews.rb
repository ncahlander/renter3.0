class RemoveTitleAndTextFromReviews < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :title, :string
    remove_column :reviews, :text, :string
  end
end

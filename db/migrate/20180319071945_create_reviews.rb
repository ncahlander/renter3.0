class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :text
      t.integer :number
      ##automatically add userid somehow??
      t.timestamps
    end
  end
end

class CreateViewerAccesses < ActiveRecord::Migration[5.1]
  def change
    create_table :viewer_accesses do |t|
      t.integer :profile_id
      t.integer :user_id
      t.boolean :access_given
      
      t.timestamps
    end
  end
end

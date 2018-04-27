class CreateAccessers < ActiveRecord::Migration[5.1]
  def change
    create_table :accessers do |t|
      t.boolean :access_granted
      t.integer :viewing_id
      t.integer :viewable_profile

      t.timestamps
    end
    add_index :accessers, :viewing_id
    add_index :accessers, :viewable_profile
  end
end

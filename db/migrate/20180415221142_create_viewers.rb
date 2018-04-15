class CreateViewers < ActiveRecord::Migration[5.1]
  def change
    create_table :viewers do |t|
      t.boolean :pageAccess
      t.references :user, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end

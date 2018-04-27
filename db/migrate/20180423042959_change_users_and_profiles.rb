class ChangeUsersAndProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :firstName, :string
    add_column :profiles, :lastName, :string
    add_column :users, :role, :string
  end
end

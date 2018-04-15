class AddAccessAllowedToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :access_allowed, :boolean
  end
end

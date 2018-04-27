class AddUserInfoToViewerAccesses < ActiveRecord::Migration[5.1]
  def change
    add_column :viewer_accesses, :viewing_id, :integer
    add_column :viewer_accesses, :viewable_profile, :integer
  end
end

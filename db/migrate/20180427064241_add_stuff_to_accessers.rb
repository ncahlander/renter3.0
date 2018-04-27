class AddStuffToAccessers < ActiveRecord::Migration[5.1]
  def change
    add_column :accessers, :profile_id, :integer
  end
end

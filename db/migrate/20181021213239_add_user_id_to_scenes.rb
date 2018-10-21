class AddUserIdToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :user_id, :integer
    add_index :scenes, :user_id
  end
end

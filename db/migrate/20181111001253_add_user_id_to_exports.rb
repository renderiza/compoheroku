class AddUserIdToExports < ActiveRecord::Migration[5.0]
  def change
    add_column :exports, :user_id, :integer
    add_index :exports, :user_id
  end
end

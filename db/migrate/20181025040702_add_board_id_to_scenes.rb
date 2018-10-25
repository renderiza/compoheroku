class AddBoardIdToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :board_id, :integer
  end
end

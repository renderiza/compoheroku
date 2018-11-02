class AddGroundColorToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :ground_color, :string, default: "#867d8c"
  end
end

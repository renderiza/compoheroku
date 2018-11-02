class AddBgColorToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :bg_color, :string, default: "#ffffff"
  end
end

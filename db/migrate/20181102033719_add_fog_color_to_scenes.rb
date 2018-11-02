class AddFogColorToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :fog_color, :string, default: "#000000"
  end
end

class AddSkyColorToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :sky_color, :string, default: "#7EC0EE"
  end
end

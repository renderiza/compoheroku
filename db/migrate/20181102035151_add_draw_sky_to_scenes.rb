class AddDrawSkyToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :draw_sky, :boolean, default: false
  end
end

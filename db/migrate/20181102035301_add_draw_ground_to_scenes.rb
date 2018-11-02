class AddDrawGroundToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :draw_ground, :boolean, default: false
  end
end

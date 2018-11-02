class AddColorByLayerToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :color_by_layer, :boolean, default: false
  end
end

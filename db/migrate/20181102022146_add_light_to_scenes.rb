class AddLightToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :light, :integer, default: 50
  end
end

class AddShadowsToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :shadows, :boolean, default: false
  end
end

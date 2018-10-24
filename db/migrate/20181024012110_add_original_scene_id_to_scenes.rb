class AddOriginalSceneIdToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :original_scene_id, :integer
  end
end

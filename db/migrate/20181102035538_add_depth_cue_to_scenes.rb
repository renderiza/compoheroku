class AddDepthCueToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :depth_cue, :boolean, default: false
  end
end

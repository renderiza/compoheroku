class AddEdgeToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :edge, :boolean, default: false
  end
end

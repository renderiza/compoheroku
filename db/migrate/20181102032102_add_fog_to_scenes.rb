class AddFogToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :fog, :boolean, default: false
  end
end

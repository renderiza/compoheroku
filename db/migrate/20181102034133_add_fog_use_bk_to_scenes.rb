class AddFogUseBkToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :fog_use_bk, :boolean, default: true
  end
end

class AddHiddenToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :hidden, :boolean, default: false
  end
end

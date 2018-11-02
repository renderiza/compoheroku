class AddDarkToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :dark, :integer, default: 50
  end
end

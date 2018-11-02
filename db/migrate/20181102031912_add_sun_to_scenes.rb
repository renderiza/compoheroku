class AddSunToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :sun, :boolean, default: true
  end
end

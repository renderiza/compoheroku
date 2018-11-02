class AddProfilesToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :profiles, :boolean, default: false
  end
end

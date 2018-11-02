class AddEndpointsToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :endpoints, :boolean, default: false
  end
end

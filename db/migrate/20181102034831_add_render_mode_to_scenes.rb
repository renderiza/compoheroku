class AddRenderModeToScenes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenes, :render_mode, :integer, default: 2
  end
end

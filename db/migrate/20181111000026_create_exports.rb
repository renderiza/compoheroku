class CreateExports < ActiveRecord::Migration[5.0]
  def change
    create_table :exports do |t|
      t.integer :width, default: 1024
      t.integer :height, default: 768

      t.timestamps
    end
  end
end

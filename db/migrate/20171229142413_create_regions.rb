class CreateRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :regions do |t|
      t.integer :numeric_code
      t.string :name

      t.timestamps
    end
  end
end

class CreateMunicipalities < ActiveRecord::Migration[5.1]
  def change
    create_table :municipalities do |t|
      t.integer :numeric_code
      t.string :name
      t.boolean :state, default: true

      t.timestamps
    end
  end
end

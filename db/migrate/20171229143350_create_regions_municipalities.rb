class CreateRegionsMunicipalities < ActiveRecord::Migration[5.1]
  def change
    create_table :regions_municipalities do |t|
      t.belongs_to :region, index: true
      t.belongs_to :municipality, index: true
    end
  end
end

class CreateMunicipalitiesRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :municipalities_regions do |t|
      t.belongs_to :region, index: true
      t.belongs_to :municipality, index: true
    end
  end
end

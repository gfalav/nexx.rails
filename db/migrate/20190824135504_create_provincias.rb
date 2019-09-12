class CreateProvincias < ActiveRecord::Migration[6.0]
  def change
    create_table :provincias do |t|
      t.references :pais, null: false, foreign_key: true
      t.string :nombre

      t.timestamps
    end

    Provincia.create(:id=>1, :pais_id=>1, :nombre=>"SAN LUIS")
    Provincia.create(:id=>2, :pais_id=>1, :nombre=>"CÓRDOBA")
    
  end
end

class CreateMunicipios < ActiveRecord::Migration[6.0]
  def change
    create_table :municipios do |t|
      t.references :departamento, null: false, foreign_key: true
      t.string :nombre

      t.timestamps
    end

    Municipio.create(:id=>1, :departamento_id=>1, :nombre=>'JUANA KOSLAY')
    Municipio.create(:id=>2, :departamento_id=>1, :nombre=>'LA PUNTA')
  end
end

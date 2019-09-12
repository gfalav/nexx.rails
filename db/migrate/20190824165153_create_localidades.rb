class CreateLocalidades < ActiveRecord::Migration[6.0]
  def change
    create_table :localidades do |t|
      t.references :municipio, null: false, foreign_key: true
      t.string :nombre

      t.timestamps
    end

	Localidad.create(:id=>1, :municipio_id=>1, :nombre=>'CRUZ DE PIEDRA')
	Localidad.create(:id=>2, :municipio_id=>1, :nombre=>'CUCHI CORRAL')
	Localidad.create(:id=>3, :municipio_id=>1, :nombre=>'DANIEL DONOVAN')
	Localidad.create(:id=>4, :municipio_id=>1, :nombre=>'EL CHORRILLO')
	Localidad.create(:id=>5, :municipio_id=>1, :nombre=>'EL TALITA')
	Localidad.create(:id=>6, :municipio_id=>1, :nombre=>'ELEODORO LOBOS')
	Localidad.create(:id=>7, :municipio_id=>1, :nombre=>'J. W. GEZ')
	Localidad.create(:id=>8, :municipio_id=>1, :nombre=>'LA CUMBRE')
	Localidad.create(:id=>9, :municipio_id=>1, :nombre=>'LAS CHACRAS')
	Localidad.create(:id=>10, :municipio_id=>1, :nombre=>'LOS PUQUIOS')
	Localidad.create(:id=>11, :municipio_id=>1, :nombre=>'QUEBRADA DE LOS CONDORES')
	Localidad.create(:id=>12, :municipio_id=>1, :nombre=>'SAN ROQUE')


  end
end
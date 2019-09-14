class Calle < ApplicationRecord
  belongs_to :barrio

  has_many :direcciones

  def fullcalle
  	return 'Munic: ' + self.barrio.localidad.municipio.nombre + 'Local: ' + self.barrio.localidad.nombre + '  -  Barrio: ' + self.barrio.nombre + '  -  Calle: ' + self.nombre
  end
end

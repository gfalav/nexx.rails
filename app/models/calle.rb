class Calle < ApplicationRecord
  belongs_to :barrio

  has_many :direcciones

  def fullcalle
  	return self.barrio.localidad.municipio.nombre + '  -  ' + self.barrio.nombre + '  -  ' + self.nombre
  end
end

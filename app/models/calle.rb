class Calle < ApplicationRecord
  belongs_to :barrio

  def fullcalle
  	return self.barrio.localidad.municipio.nombre + '  -  ' + self.barrio.nombre + '  -  ' + self.nombre
  end
end

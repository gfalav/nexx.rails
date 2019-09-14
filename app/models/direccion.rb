class Direccion < ApplicationRecord
  belongs_to :calle

  def fulldireccion
  	return 'Munic: ' + self.calle.barrio.localidad.municipio.nombre + '  -  Barrio: ' + self.calle.barrio.nombre + '  -  Calle: ' + self.calle.nombre + ' ' + self.nro.to_s + ', P/D ' + self.pdepto + ' - Acceso: ' + self.acceso
  end
end

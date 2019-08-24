class Direccion < ApplicationRecord
  belongs_to :calle

  def fulldireccion
  	return self.calle.nombre + ' ' + self.nro.to_s + ', P/D ' + self.pdepto + ' - Acceso: ' + self.acceso
  end
end

class Enumerado < ApplicationRecord

	has_many :clientes

	def cod_desc
		return self.codigo.to_s + ': ' + self.descripcion[0..80]
	end
end

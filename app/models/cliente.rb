class Cliente < ApplicationRecord
	belongs_to :tipodoc, :class_name=>"Enumerado", :foreign_key=>"tipodoc_id"
	belongs_to :emisordoc, :class_name=>"Enumerado", :foreign_key=>"emisordoc_id"
	belongs_to :ciiu, :class_name=>"Enumerado", :foreign_key=>"ciiu_id"

	has_many :cuentas

	def nombre_completo
		return self.apellido + ' ' + self.apellido2 + ', ' + self.nombres + ' - Documento: ' + self.tipodoc.descripcion + ' - ' + self.documento
	end
end

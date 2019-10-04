class Contrato < ApplicationRecord
	belongs_to :cuenta
	belongs_to :suministro

	has_one :edesal
end

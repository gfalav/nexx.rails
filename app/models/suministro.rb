class Suministro < ApplicationRecord
	has_one :contrato

	has_many :medidores
end

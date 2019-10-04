class Medidor < ApplicationRecord
	belongs_to :suministro

	has_many :lecturas
end

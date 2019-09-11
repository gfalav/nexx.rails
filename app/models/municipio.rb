class Municipio < ApplicationRecord
  belongs_to :departamento

  has_many :localidades
end

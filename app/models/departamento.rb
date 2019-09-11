class Departamento < ApplicationRecord
  belongs_to :provincia

  has_many :municipios
end

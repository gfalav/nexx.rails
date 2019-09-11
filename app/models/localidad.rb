class Localidad < ApplicationRecord
  belongs_to :municipio

  has_many :barrios
end

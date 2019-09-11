class Barrio < ApplicationRecord
  belongs_to :localidad

  has_many :calles
end

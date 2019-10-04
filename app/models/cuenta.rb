class Cuenta < ApplicationRecord
  belongs_to :cliente

  has_many :contratos
end

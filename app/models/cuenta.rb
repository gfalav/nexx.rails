class Cuenta < ApplicationRecord
  belongs_to :cliente
  belongs_to :tpago, :class_name=>"Enumerado", :foreign_key=>"tpago_id"
  belongs_to :timpagado, :class_name=>"Enumerado", :foreign_key=>"timpagado_id"
  belongs_to :tvencimiento, :class_name=>"Enumerado", :foreign_key=>"tvencimiento_id"
  belongs_to :tenvio, :class_name=>"Enumerado", :foreign_key=>"tenvio_id"


  has_many :contratos
end

class AddTenvioToCuenta < ActiveRecord::Migration[6.0]
  def change
  	add_column :cuentas, :tenvio_id, :integer
  end
end

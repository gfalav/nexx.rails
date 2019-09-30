class CreateLineas < ActiveRecord::Migration[6.0]
  def change
    create_table :lineas do |t|
      t.integer :factura_id
      t.integer :concepto_id
      t.decimal :importe
      t.string :leyenda

      t.timestamps
    end
  end
end

class CreateCuentas < ActiveRecord::Migration[6.0]
  def change
    create_table :cuentas do |t|
      t.references :cliente, null: false, foreign_key: true
      t.string :nombre
      t.integer :dirpostal_id
      t.integer :tpago_id
      t.integer :timpagado_id
      t.integer :tvencimiento_id

      t.timestamps
    end
  end
end

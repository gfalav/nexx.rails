class CreateBonificaciones < ActiveRecord::Migration[6.0]
  def change
    create_table :bonificaciones do |t|
      t.integer :edesal_id
      t.integer :linea
      t.decimal :porcentaje
      t.date :fdesde
      t.date :fhasta

      t.timestamps
    end
  end
end

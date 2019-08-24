class CreateDirecciones < ActiveRecord::Migration[6.0]
  def change
    create_table :direcciones do |t|
      t.references :calle, null: false, foreign_key: true
      t.integer :nro
      t.string :pdepto
      t.string :acceso
      t.float :gpslat
      t.float :gpslong

      t.timestamps
    end
  end
end

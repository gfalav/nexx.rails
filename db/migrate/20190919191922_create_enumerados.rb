class CreateEnumerados < ActiveRecord::Migration[6.0]
  def change
    create_table :enumerados do |t|
      t.string :radical
      t.string :codigo
      t.string :descripcion
      t.text :detalle

      t.timestamps
    end
  end
end

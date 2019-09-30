class CreateLecturas < ActiveRecord::Migration[6.0]
  def change
    create_table :lecturas do |t|
      t.integer :medidor_id
      t.integer :tlectura_id
      t.date :flectura
      t.integer :tconsumo_id
      t.decimal :lectura
      t.decimal :ctelect
      t.decimal :consumo
      t.integer :electura_id

      t.timestamps
    end
  end
end

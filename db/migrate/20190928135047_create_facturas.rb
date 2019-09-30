class CreateFacturas < ActiveRecord::Migration[6.0]
  def change
    create_table :facturas do |t|
      t.integer :contrato_id
      t.integer :periodo
      t.date :fdesde
      t.date :fhasta
      t.date :femision
      t.date :fvcto
      t.date :fproxvcto
      t.date :fupb
      t.string :nro

      t.timestamps
    end
  end
end

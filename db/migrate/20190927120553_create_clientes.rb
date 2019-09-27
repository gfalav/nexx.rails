class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :apellido
      t.string :apellido2
      t.string :nombres
      t.string :documento
      t.integer :tipodoc_id
      t.integer :emisordoc_id
      t.string :contacto
      t.integer :ciiu_id

      t.timestamps
    end
  end
end

class CreateDocumentos < ActiveRecord::Migration[6.0]
  def change
    create_table :documentos do |t|
      t.string :file
      t.string :descripcion

      t.timestamps
    end
  end
end

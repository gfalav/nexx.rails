class CreateProvincias < ActiveRecord::Migration[6.0]
  def change
    create_table :provincias do |t|
      t.references :pais, null: false, foreign_key: true
      t.string :nombre

      t.timestamps
    end
    
  end
end

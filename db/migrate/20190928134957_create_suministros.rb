class CreateSuministros < ActiveRecord::Migration[6.0]
  def change
    create_table :suministros do |t|
      t.string :nombre
      t.integer :edesal_id
      t.integer :tmedicion_id
      t.integer :tconexion_id
      t.integer :ttension_id
      t.integer :tfase_id
      t.integer :direccion_id

      t.timestamps
    end
  end
end

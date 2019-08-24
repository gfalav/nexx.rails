class CreateLocalidades < ActiveRecord::Migration[6.0]
  def change
    create_table :localidades do |t|
      t.references :municipio, null: false, foreign_key: true
      t.string :nombre

      t.timestamps
    end
  end
end

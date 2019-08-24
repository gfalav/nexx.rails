class CreateBarrios < ActiveRecord::Migration[6.0]
  def change
    create_table :barrios do |t|
      t.references :localidad, null: false, foreign_key: true
      t.string :nombre

      t.timestamps
    end
  end
end

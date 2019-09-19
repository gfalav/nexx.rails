class CreateMunicipios < ActiveRecord::Migration[6.0]
  def change
    create_table :municipios do |t|
      t.references :departamento, null: false, foreign_key: true
      t.string :nombre

      t.timestamps
    end

  end
end

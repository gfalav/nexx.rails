class CreateEdesals < ActiveRecord::Migration[6.0]
  def change
    create_table :edesals do |t|
      t.integer :contrato_id
      t.string :tarifa_id
      t.integer :potvigente
      t.date :fpotvigente
      t.integer :potoriginal
      t.date :fpotoriginal
      t.date :fdetectbadcosfi
      t.integer :csmofijo
      t.integer :eservicio

      t.timestamps
    end
  end
end

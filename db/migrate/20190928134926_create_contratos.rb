class CreateContratos < ActiveRecord::Migration[6.0]
  def change
    create_table :contratos do |t|
      t.integer :cuenta_id
      t.string :nombre
      t.integer :tcuit_id
      t.integer :tiibb_id
      t.integer :tperfact_id
      t.integer :econtrato_id
      t.date :fcontratoact

      t.timestamps
    end
  end
end

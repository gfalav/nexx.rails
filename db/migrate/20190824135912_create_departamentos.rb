class CreateDepartamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :departamentos do |t|
      t.references :provincia, null: false, foreign_key: true
      t.string :nombre

      t.timestamps
    end

    Departamento.create(:id=>1, :provincia_id=>1, :nombre=>'PUEYRREDÓN')
  end
end

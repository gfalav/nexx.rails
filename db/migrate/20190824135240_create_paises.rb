class CreatePaises < ActiveRecord::Migration[6.0]
  def change
    create_table :paises do |t|
      t.string :nombre

      t.timestamps
    end

    Pais.create(:id=>1, :nombre=>'Argentina')
  end
end

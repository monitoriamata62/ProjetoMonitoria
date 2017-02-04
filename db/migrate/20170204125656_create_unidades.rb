class CreateUnidades < ActiveRecord::Migration[5.0]
  def change
    create_table :unidades do |t|
      t.string :descricao
      t.references :area, foreign_key: true

      t.timestamps
    end
  end
end

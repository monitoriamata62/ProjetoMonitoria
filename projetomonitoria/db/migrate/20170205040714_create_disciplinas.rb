class CreateDisciplinas < ActiveRecord::Migration[5.0]
  def change
    create_table :disciplinas do |t|
      t.string :descricao
      t.references :unidade, foreign_key: true
      t.string :sigla

      t.timestamps
    end
  end
end

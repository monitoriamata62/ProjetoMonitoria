class CreateMonitoria < ActiveRecord::Migration[5.0]
  def change
    create_table :monitoria do |t|
      t.references :utilizador, foreign_key: true
      t.string :local
      t.references :disciplina, foreign_key: true

      t.timestamps
    end
  end
end

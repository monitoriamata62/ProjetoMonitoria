class CreateMonitoria < ActiveRecord::Migration[5.0]
  def change
    create_table :monitoria do |t|
      t.string :monitor
      t.string :local
      t.string :data
      t.string :inicio
      t.string :fim
      t.references :disciplina, foreign_key: true

      t.timestamps
    end
  end
end

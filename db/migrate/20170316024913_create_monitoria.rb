class CreateMonitoria < ActiveRecord::Migration[5.0]
  def change
    create_table :monitoria do |t|
      t.references :monitor, foreign_key: true
      t.references :professor, foreign_key: true
      t.references :disciplina, foreign_key: true
      t.string :local
      t.date :data
      t.string :horario

      t.timestamps
    end
  end
end

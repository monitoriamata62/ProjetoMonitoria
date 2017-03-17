class CreateMonitoria < ActiveRecord::Migration[5.0]
  def change
    create_table :monitoria do |t|
      t.references :monitor, index: true
      t.references :professor, index: true
      t.references :disciplina, foreign_key: true
      t.string :local
      t.date :data
      t.string :horario

      t.timestamps
    end
    add_foreign_key :monitoria, :users, column: :monitor_id
    add_foreign_key :monitoria, :users, column: :professor_id
  end
end

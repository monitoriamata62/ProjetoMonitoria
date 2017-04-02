class CreateAgendas < ActiveRecord::Migration[5.0]
  def change
    create_table :agendas do |t|
      t.references :monitorium, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

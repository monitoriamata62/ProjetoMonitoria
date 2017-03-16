class CreateInstrutors < ActiveRecord::Migration[5.0]
  def change
    create_table :instrutors do |t|
      t.references :nome, foreign_key: true

      t.timestamps
    end
  end
end

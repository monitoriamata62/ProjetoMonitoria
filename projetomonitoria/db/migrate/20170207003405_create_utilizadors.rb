class CreateUtilizadors < ActiveRecord::Migration[5.0]
  def change
    create_table :utilizadors do |t|
      t.string :nome
      t.string :email
      t.string :matricula
      t.integer :identificador

      t.timestamps
    end
  end
end

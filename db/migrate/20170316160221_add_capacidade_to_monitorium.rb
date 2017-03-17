class AddCapacidadeToMonitorium < ActiveRecord::Migration[5.0]
  def change
    add_column :monitoria, :capacidade, :integer
  end
end

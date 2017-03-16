class AddCapacidadeatualToMonitorium < ActiveRecord::Migration[5.0]
  def change
    add_column :monitoria, :capacidadeatual, :interger
  end
end

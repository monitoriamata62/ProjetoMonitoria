class Monitorium < ApplicationRecord
  belongs_to :monitor, :class_name => "User"
  belongs_to :professor, :class_name => "User"
  belongs_to :disciplina
end

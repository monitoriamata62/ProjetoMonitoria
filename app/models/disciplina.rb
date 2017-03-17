class Disciplina < ApplicationRecord
  belongs_to :unidade
  has_many :monitorium
end

class Instrutor < ApplicationRecord
  belongs_to :nome, :class_name => "User"
end

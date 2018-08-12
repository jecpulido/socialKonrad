class Entrada < ApplicationRecord
  belongs_to :Usuario

  has_many :Reaccion
end

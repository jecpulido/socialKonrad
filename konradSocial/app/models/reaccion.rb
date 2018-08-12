class Reaccion < ApplicationRecord
  belongs_to :Entrada
  belongs_to :Usuario
end

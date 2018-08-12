class Relacion < ApplicationRecord
  belongs_to :Usuario
  #belongs_to :usuario2, :class_name => "Usuario"

end

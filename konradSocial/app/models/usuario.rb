class Usuario < ApplicationRecord
	has_many :Correo
	has_many :Telefono
	has_many :Entrada

end

class Asignatura < ApplicationRecord
	has_many :carreraAsignatura
	has_many :carreras, through: :carreraAsignatura	
	has_many :userAsignatura
	validates :nombre, presence: {:message => 'No puede quedar vacío'}
	validates :nombre, length: {in: 7..60, too_short: "Demasiado corto", too_long: "Demasiado largo"}
	validates :descripcion, length: {maximum: 500, too_long: ": %{count} caracteres es el máximo permitido"}
end

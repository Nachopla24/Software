class Carrera < ApplicationRecord
	belongs_to :universidad
	has_many :carreraAsignatura	
	belongs_to :departamento
	validates :nombre, presence: true
	validates :nombre, length: {in: 7..80, too_short: "Demasiado corto", too_long: "Demasiado largo"}
	validates :descripcion, length: {maximum: 500, too_long: ": %{count} caracteres es el máximo permitido"}
end

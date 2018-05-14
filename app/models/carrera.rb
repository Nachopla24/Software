class Carrera < ApplicationRecord
	belongs_to :universidad
	has_many :carreraAsignatura	
	validates :nombre, presence: true
	validates :nombre, length: {in: 7..80, too_short: "Demasiado corto", too_long: "Demasiado largo"}
	validates_format_of :nombre, :with => /\A[A-Z a-z á é í ó ú ñ - ']+\z/
	validates :descripcion, length: {maximum: 500, too_long: ": %{count} caracteres es el máximo permitido"}
end

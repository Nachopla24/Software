class Carrera < ApplicationRecord
<<<<<<< HEAD
	belongs_to :universidad
	has_many :carreraAsignatura	
=======
	has_and_belongs_to_many :asignaturas, dependent: :destroy
	belongs_to :departamento
	validates :nombre, presence: {:message => 'No puede quedar vacío'}
	validates :nombre, length: {in: 7..80, too_short: "Demasiado corto", too_long: "Demasiado largo"}
	validates :descripcion, length: {maximum: 500, too_long: ": %{count} caracteres es el máximo permitido"}
>>>>>>> eb61988e53128dbffef7f644e2ebf179802ad635
end

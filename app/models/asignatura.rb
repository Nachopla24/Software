class Asignatura < ApplicationRecord
	has_and_belongs_to_many :carreras
	has_and_belongs_to_many :alumnos, dependent: :destroy
	validates :nombre, presence: {:message => 'No puede quedar vacío'}
	validates :nombre, length: {in: 7..60, too_short: "Demasiado corto", too_long: "Demasiado largo"}
	
end

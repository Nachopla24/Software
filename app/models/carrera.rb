class Carrera < ApplicationRecord
	has_and_belongs_to_many :asignaturas, dependent: :destroy
	belongs_to :departamento
	validates :nombre, presence: {:message => 'No puede quedar vacío'}
	validates :nombre, length: {in: 7..80, too_short: "Demasiado corto", too_long: "Demasiado largo"}
	
end

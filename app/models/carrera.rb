class Carrera < ApplicationRecord
	has_and_belongs_to_many :asignaturas, dependent: :destroy
	belongs_to :departamento
end

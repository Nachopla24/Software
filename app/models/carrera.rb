class Carrera < ApplicationRecord
	has_and_belongs_to_many :asignaturas
end

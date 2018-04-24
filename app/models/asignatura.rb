class Asignatura < ApplicationRecord
	has_and_belongs_to_many :carreras
	has_and_belongs_to_many :alumnos, dependent: :destroy
end

class Asignatura < ApplicationRecord
	has_many :carreraAsignatura
	has_many :alumnos
end

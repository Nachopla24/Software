class Alumno < ApplicationRecord
	has_and_belongs_to_many :alumnoAsignatura
	has_many :posts
end
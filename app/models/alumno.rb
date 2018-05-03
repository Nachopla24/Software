class Alumno < ApplicationRecord
	has_many :alumnoAsignatura
	has_many :posts
end
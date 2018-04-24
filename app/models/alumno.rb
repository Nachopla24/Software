class Alumno < ApplicationRecord
	has_and_belongs_to_many :asignaturas
	has_many :posts, dependent: :destroy
end

class CarreraAsignatura < ApplicationRecord
	belongs_to :carreras
	belongs_to :asignaturas
	accepts_nested_attributes_for :asignaturas
end

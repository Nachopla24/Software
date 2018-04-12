class Asignatura < ApplicationRecord
	has_and_belongs_to_many :carreras
end

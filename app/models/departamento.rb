class Departamento < ApplicationRecord
	has_many :carreras
	belongs_to :universidad
end

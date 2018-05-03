class Carrera < ApplicationRecord
	belongs_to :universidad
	has_many :carreraAsignatura	
end

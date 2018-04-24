class Departamento < ApplicationRecord
	has_many :carreras, dependent: :destroy
	belongs_to :universidad
end

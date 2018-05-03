class Universidad < ApplicationRecord
	has_many :carreras
	validates :nombre, presence: {:message => 'No puede quedar vacío'}
	validates :nombre, length: {in: 7..60, too_short: "Demasiado corto", too_long: "Demasiado largo"}
end

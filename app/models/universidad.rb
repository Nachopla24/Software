class Universidad < ApplicationRecord
	has_many :carreras
	validates :nombre, presence: true
	validates :nombre, length: {in: 7..60, too_short: "Demasiado corto", too_long: "Demasiado largo"}
	validates :descripcion, presence: true
end

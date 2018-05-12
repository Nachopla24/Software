class Universidad < ApplicationRecord
	has_many :carreras
	validates :nombre, presence: true
	validates :nombre, length: {in: 15..60}
	validates_format_of :nombre, :with => /\A[A-Z a-z á é í ó ú ñ - ']+\z/
	validates :descripcion, presence: true
end

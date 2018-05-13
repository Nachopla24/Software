class Universidad < ApplicationRecord
	has_many :carreras
	validates :nombre, presence: true
	validates :nombre, length: {in: 15..60}
	validates_format_of :nombre, :with => /\A[A-Z a-z á é í ó ú ñ - ']+\z/
	validates :direccion, presence: true
	validates :direccion, length: {in: 7..60}
	validates_format_of :direccion, :with => /\A[A-Z a-z á é í ó ú ñ - ' ü]+\z/
	validates :numDireccion, presence: true
	validates :numDireccion, length: {in: 2..5}
	validates :numDireccion, numericality: {greater_than: 0}
	validates :descripcion, presence: true
	validates :descripcion, length: {in: 3..500}
end

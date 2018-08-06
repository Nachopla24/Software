class Universidad < ApplicationRecord
	has_many :carreras, dependent: :destroy#if you delete an university the carieers will be destroy
	validates :nombre, presence: true
	validates :nombre, length: {in: 3..60}
	validates_format_of :nombre, :with => /\A[A-Z a-z á é í ó ú ñ - ']+\z/
	validates :direccion, presence: true
	validates :direccion, length: {in: 7..60}
	validates_format_of :direccion, :with => /\A[A-Z a-z á é í ó ú ñ - ' ü]+\z/
	validates :numDireccion, presence: true
	validates :numDireccion, length: {in: 2..5}
	validates :numDireccion, numericality: {greater_than: 0}
	validates :descripcion, presence: true
	validates :descripcion, length: {in: 3..1000}
  	accepts_nested_attributes_for :carreras	
end

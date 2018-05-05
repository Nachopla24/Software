class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :alumno
	validates :descripcion, presence: true
  
end

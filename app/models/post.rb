class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :user
	validates :descripcion, presence: true
  
end

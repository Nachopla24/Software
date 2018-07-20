class Post < ApplicationRecord
	acts_as_votable
	mount_uploader :image, ImageUploader
	belongs_to :user
	validates :descripcion, presence: true

  
end

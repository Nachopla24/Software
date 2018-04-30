class Post < ApplicationRecord
	belongs_to :alumno
	#Mounts paperclip image
  	has_attached_file :image
  	#This validates the type of file uploaded. According to this, only images are allowed.
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  	end

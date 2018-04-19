class PostsController < ApplicationController
	 #Index action, photos gets listed in the order at which they were created
 def index
  @posts = Post.order('created_at')
 end

 #New action for creating a new photo
 def new
  @post = Post.new
 end

 #Create action ensures that submitted photo gets created if it meets the requirements
 def create
  @post = Post.new(post_params)
  if @post.save
   flash[:notice] = "Successfully added new photo!"
   redirect_to root_path
  else
   flash[:alert] = "Error adding new photo!"
   render :new
  end
 end

 private

 #Permitted parameters when creating a photo. This is used for security reasons.
 def post_params
  params.require(:post).permit(:titulo, :image)
 end
end

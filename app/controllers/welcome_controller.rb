class WelcomeController < ApplicationController
  def index
  	@posts = Post.all.order(id: :desc)
  	if user_signed_in?
  	@posts = Post.order(id: :desc)
  	             .where user_id: current_user.id
  	end
  end
end

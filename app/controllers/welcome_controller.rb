class WelcomeController < ApplicationController
  def index
  	@posts = Post.all.paginate(page: params[:page], per_page: 6)
  					.order(id: :desc)
  	
  end
end

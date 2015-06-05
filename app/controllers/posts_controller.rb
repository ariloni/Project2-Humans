class PostsController < ApplicationController								
	def index
    @posts = Post.all
	end
	
	def show
    @post = Post.find(post_params)
 	end
	
	def new
		
    end
    #Method that saves post to database.
    def create
    	@post = Post.new(post_params)
 
 		@post.save
		redirect_to posts_path
	end

#Privately sets parameters to be used by other methods.
private
  def post_params
    params.require(:post).permit(:photo, :body, :landmark, 
    	:city, :state, :country)
  end
end

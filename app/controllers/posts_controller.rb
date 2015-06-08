class PostsController < ApplicationController								
	def index
        @posts = Post.all
	end

	def edit
        @post = Post.find(params[:id])
    end

	def show
        @post = Post.find(params[:id])
 	end
	
	def new
		
    end
   
    def create
    	@post = Post.new(post_params)
 
 		if @post.save
		  redirect_to posts_path
        end
	end

    def update
        @post = Post.find(params[:id])

        if @post.update(post_params)
            redirect_to @post
        else
            render 'edit'
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end


#Privately sets parameters to be used by other methods.
private
  def post_params
    params.require(:post).permit(:photo, :body, :landmark, 
    	:city, :state, :country)
  end
end


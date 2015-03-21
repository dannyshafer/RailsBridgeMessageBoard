class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

    def new
    	@post = Post.new
    end

	def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.content = params[:post][:content]
    @post.user = current_user
    @post.save
    redirect_to @post
  end
end

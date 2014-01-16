class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy, :edit, :update]

	def new
		@post = Post.new
	end

	def index
		@posts = Post.all
	end

	def create
		@post = current_user.posts.build(post_params)

		if @post.save
		  flash[:notice] = 'Готово!'
		  redirect_to @post
		else
		  render 'new'
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
        @post = Post.find(params[:id])
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
        flash[:notice] = "Новость '#{@post.title}' удалена!"
    	redirect_to posts_path
    end 

	private

	  def post_params
	      params.require(:post).permit(:title, :content)
	  end
end

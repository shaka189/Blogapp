class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def new
  	@post=Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      log_in @post
      flash[:success] = "Welcome to the post!"
      redirect_to @post
    else
      render 'new'
    end
  end
  private

    def post_params
      params.require(:post).permit(:displaytitle, :body, :image)
    end
end

class PostsController < ApplicationController
  def show
  end

  def new
  end

  def edit
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to user_path
  end

  def update
  end

  def delete
  end

  private
  def find_params
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :image)
  end
end

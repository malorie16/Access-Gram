class PostsController < ApplicationController
  def show
    # byebug
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.new
  end

  def create
    # @post = Post.create(title: post_params[:title], body: post_params[:body], image: post_params[:image], user_id: 1)
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
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

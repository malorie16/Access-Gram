class PostsController < ApplicationController
  layout 'pages'

  def index
    @posts = Post.all
  end

  def show
    # byebug
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    byebug
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      flash[:error] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def update
  end

  def destroy
    @post = Post.find(params[:id])
    @post.delete
    redirect_to user_url
  end

  private
  def find_params
    @post = Post.find(params[:id])
  end


  def post_params
    params.require(:post).permit(:title, :change_to_hashtag, :image)
  end
end

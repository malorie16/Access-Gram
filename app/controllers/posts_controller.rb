class PostsController < ApplicationController
  before_action :find_params, only: [:show, :edit, :destroy]
  layout 'pages'

  def index
    @posts = Post.all
    render :layout => 'all_posts'
  end

  def show
    # byebug
    render :layout => 'post'
  end

  def new
    @post = Post.new
    render :layout => 'create_post'
  end

  def edit
  end

  def create

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
    @post.delete
    redirect_to user_path(current_user)
  end

  private
  def find_params
    @post = Post.find(params[:id])
  end


  def post_params
    params.require(:post).permit(:title, :change_to_hashtag, :image)
  end
end

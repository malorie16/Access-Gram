class HashtagsController < ApplicationController
  def show
    @hashtag = Hashtag.find(params[:id])
    render :layout => 'hashtag_posts'
  end

  def new
    @hashtag = Hashtag.new
  end

  def edit
  end

  def create

  end

  def update
  end

  def delete
  end

  private

  def hashtag_params
    params.require(:hashtag).permit(:name)
  end
end

class HashtagsController < ApplicationController
  def show
  end

  def new
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

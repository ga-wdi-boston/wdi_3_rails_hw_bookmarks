class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(allowed_params)
    @bookmark.save
    redirect_to action: :index
  end

  def destroy
    @bookmark.destroy
    redirect_to action: :index
  end

  def allowed_params
    params.require(:bookmark).permit(:url, :title, :description, :category, :checkbox)
  end

end



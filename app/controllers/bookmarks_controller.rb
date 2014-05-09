class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.order(:title)
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    bookmark = Bookmark.create(bookmark_params)
    redirect_to bookmark
  end



  private

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :comment, :category, :is_fav)
  end

end

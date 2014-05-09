class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.order(:title)
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :comment, :category, :is_fav)
  end

end

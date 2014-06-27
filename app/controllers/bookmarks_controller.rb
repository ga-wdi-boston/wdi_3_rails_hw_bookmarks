class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all.order(:title)
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def filter
    @bookmarks = Bookmark.where(category: Bookmark::CATEGORIES[params[:filter_id]])
    redirect_to(bookmarks_path)
  end

end

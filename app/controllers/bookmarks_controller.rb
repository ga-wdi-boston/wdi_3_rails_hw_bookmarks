class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all.order(:title)
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def filter
    if params[:filter_id].to_i < 3
      @bookmarks = Bookmark.filter_by_category(params[:filter_id].to_i)
    else
      redirect_to(bookmarks_path)
    end
  end

end

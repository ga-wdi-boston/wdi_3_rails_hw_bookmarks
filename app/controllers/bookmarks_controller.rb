class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all.order(updated_at: :desc)
  end

  def new
    @bookmark = Bookmark.new
  end
end

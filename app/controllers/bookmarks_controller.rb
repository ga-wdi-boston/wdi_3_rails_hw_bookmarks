class BookmarksController < ApplicationController

  # return all bookmarks in alphabetical order
  def index
    @bookmarks = Bookmark.order(:title)
  end

  # return a specific bookmark
  def show
    @bookmark = Bookmark.find(params[:id])
  end
end

class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    # Bookmark.create(url: url, title: title,)
    # binding.pry
  end
  def book_params
      params.require(:entry).permit(:message, :name)
  end
end



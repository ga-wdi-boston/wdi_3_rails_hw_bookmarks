class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all

    #render text: "THIS WORK NOW"
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end
end

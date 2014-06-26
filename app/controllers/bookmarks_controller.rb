class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all

    render text: "THIS WORK NOW"
  end
end

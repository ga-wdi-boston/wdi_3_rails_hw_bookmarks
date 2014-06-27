class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all.order(:title)

    @commented_bookmarks = @bookmarks.select { |bookmark| bookmark.has_comment? }
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new

  end

  def edit

  end

  def create

  end

  def destroy

  end
end

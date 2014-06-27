class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  # def edit
  #   @bookmark = Bookmark.edit(params)

  # end

  def show
  end

  def create
  end

  private
  def bookmark_params
    params.require(:bookmark).permit([:title, :url])
  end
end

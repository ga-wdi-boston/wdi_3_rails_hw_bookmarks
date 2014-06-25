class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      flash.keep[:notice] = "Bookmark saved!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @bookmarks = Bookmark.order(title: :desc)
  end



  private

    def bookmark_params
      params.require(:bookmark).permit(:url, :title, :category, :favorite)
    end

end


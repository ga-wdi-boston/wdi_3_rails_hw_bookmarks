class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def create
    bookmark = Bookmark.new(bookmark_params)
    bookmark.save
    redirect_to action: :index
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

      if @bookmark.save
      # Using flash[] because we want it to appear on the *next* request
      flash[:notice] = 'Created a new bookmark!'
      redirect_to @bookmark
    else
      # Using flash.now[] because we want it to appear on *this* request
      flash.now[:errors] = @bookmark.errors.full_messages
      render :new
    end
  end

  private

  def find_blat
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :comment)
  end
end
class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all.order(title: :asc)
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      flash[:notice] = 'Created a new bookmark!'
      redirect_to '/bookmarks'
    else
      flash.now[:error] = @bookmark.errors.full_messages.join(', ')
      render :new
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :comment, :favorite)
  end
end

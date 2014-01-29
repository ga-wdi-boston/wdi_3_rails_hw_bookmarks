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
      redirect_to @blat # redirects to the show path for this object
    else
      flash.now[:error] = @blat.errors.full_messages.join(', ') # flash.now used for a message for this current request
      render :new # instead of create template, renders this other template
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :comment, :favorite)
  end
end

class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all.order(updated_at: :desc)
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      flash[:notice] = "Created #{@bookmark[:title]}"
      redirect_to @bookmark
    else
      flash.now[:error] = @bookmark.errors.full_messages.join(', ')
      render :new
    end
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :comment, :favorite)
  end
end

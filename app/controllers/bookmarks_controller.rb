class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.order(:title)
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    bookmark = Bookmark.create(bookmark_params)
    redirect_to root_path
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    bookmark = Bookmark.find(params[:id])
    bookmark.update(bookmark_params)
    redirect_to bookmark_path

  end


  def destroy
    bookmark = Bookmark.find(params[:id])
    bookmark.destroy
    redirect_to root_path
  end


end


private

def bookmark_params
  params.require(:bookmark).permit(:title, :url,:comment, :is_favorite, :category)
end

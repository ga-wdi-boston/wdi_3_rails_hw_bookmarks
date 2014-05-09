class BookmarksController < ApplicationController
  def index
    @bookmarks= Bookmark.order(:title)
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.create(bookmark_params)
    if @bookmark.valid?
      redirect_to bookmarks_path
    else
      render :new
    end

  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    bookmark = Bookmark.find(params[:id])
    bookmark.update(bookmark_params)
    redirect_to bookmark
  end

  def destroy
    bookmark = Bookmark.find(params[:id])
    bookmark.destroy
    redirect_to root_path
  end

private

  def bookmark_params
    params.require(:bookmark).permit(:title, :category, :comment, :url, :is_favorite)
  end
end

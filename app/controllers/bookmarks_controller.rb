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
    redirect_to bookmark
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

  def serious
    @bookmark = Bookmark.where(category: 'Serious').order(:title)
    render :index
  end

  def funny
    @bookmark = Bookmark.where(category: 'Funny').order(:title)
    render :index
  end

  def useful
    @bookmark = Bookmark.where(category: 'Useful').order(:title)
    render :index
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :comment, :category, :is_fav)
  end

end

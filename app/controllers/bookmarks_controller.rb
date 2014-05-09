class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
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
    flash[:success] = 'successfully created bookmark'
    redirect_to bookmarks_path
    else
      flash.now[:danger] = "Could not save bookmark"
      render :new
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update(bookmark_params)
      redirect_to bookmark_path
    else
      flash.now[:danger] = "Could not update bookmark"
      render :new
    end
  end

  def destroy
    bookmark = Bookmark.find(params[:id])
    bookmark.destroy
    redirect_to bookmarks_path
  end

  def serious
    @bookmarks = Bookmark.where(category: 'Serious').order(:title)
    render :index
  end

  def funny
    @bookmarks = Bookmark.where(category: 'Funny').order(:title)
    render :index
  end

  def favorites
    @bookmarks = Bookmark.where(is_favorite: true)
    render :index
  end

  def comments
    @bookmarks = Bookmark.where.not(comment: nil)
    render :index
  end

  def useful
    @bookmarks = Bookmark.where(category: 'Useful').order(:title)
    render :index
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :category, :comment, :is_favorite)
  end
end

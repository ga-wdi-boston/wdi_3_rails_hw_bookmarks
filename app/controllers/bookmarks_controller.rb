class BookmarksController < ApplicationController

  def index
    @page_title = 'View Bookmarkr'
    @bookmarks = Bookmark.order(:title)
  end

  def show
    @page_title = 'Viewing Bookmarkr'
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @page_title = 'Add Bookmarkr'
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.create(bookmark_params)
    if @bookmark.valid?
      redirect_to @bookmark, message: 'Bookmarkr Added'
    else
      render :new
    end
  end

  def edit
    @page_title = 'Edit Bookmarkr'
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update(bookmark_params)
      redirect_to @bookmark, message: 'Bookmarkr Updated'
    else
      render :edit
    end
  end

  def destroy
    bookmark = Bookmark.find(params[:id])
    bookmark.destroy
    redirect_to root_path
  end

  def serious
    @page_title = 'Serious Bookmarkr'
    @bookmarks = Bookmark.where(category: 'serious').order(:title)
    render :index
  end

  def funny
    @page_title = 'Funny Bookmarkr'
    @bookmarks = Bookmark.where(category: 'funny').order(:title)
    render :index
  end

  def useful
    @page_title = 'Useful Bookmarkr'
    @bookmarks = Bookmark.where(category: 'useful').order(:title)
    render :index
  end

private

  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :category, :is_favorite, :comment)
  end

end

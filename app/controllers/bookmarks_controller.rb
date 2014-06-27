class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all.order(:title)
    render :index
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to bookmarks_path
    else
      render :new
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])

    if @bookmark.update(bookmark_params)
      redirect_to @bookmark
    else
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])

    @bookmark.destroy
    redirect_to bookmarks_path
  end

  def sport
    @bookmarks = Bookmark.where(category: 'Sports').order(:title)
    render :index
  end

  def technology
    @bookmarks = Bookmark.where(category: 'Technology').order(:title)
    render :index
  end

  def business
    @bookmarks = Bookmark.where(category: 'Business').order(:title)
    render :index
  end

  private

  def bookmark_params
    params.require(:bookmark).permit([:url, :title, :category, :comment, :is_favorite])
  end


end

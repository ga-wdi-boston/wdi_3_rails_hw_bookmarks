class BookmarksController < ApplicationController

  def index
    if params[:filter].present? && params[:filter] != 'all'
      @bookmarks = Bookmark.where(category: params[:filter])
    else
      @bookmarks = Bookmark.all
    end
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
      redirect_to(bookmarks_path)
    else
      flash.now[:alert] = @bookmark.errors.full_messages
      render :new
    end

  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update(bookmark_params)
      redirect_to(bookmarks_path)
    else
      flash.now[:alert] = @bookmark.errors.full_messages
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to(bookmarks_path)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit([:url, :title, :comment, :category, :is_favorite])
  end

end

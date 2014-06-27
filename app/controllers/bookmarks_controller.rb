class BookmarksController < ApplicationController

  def index
    if params[:order] == "title"
      @bookmarks = Bookmark.order(:title)
    elsif params[:order] == "created_at"
      @bookmarks = Bookmark.order(created_at: :desc)
    elsif params[:category]
      @bookmarks = Bookmark.where(category: params[:category])
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

  private
  def bookmark_params
    params.require(:bookmark).permit([:title, :url, :comment, :category, :is_favorite])
  end
end

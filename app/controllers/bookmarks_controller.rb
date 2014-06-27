class BookmarksController < ApplicationController

  # GET /bookmarks/new
  def new
    @bookmark = Bookmark.new
  end

  # POST /bookmarks
  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.valid? && bookmark.save
      redirect_to bookmarks_path
    else
      render :new
    end
  end

  # GET /bookmarks/:id/edit
  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  # PATCH /bookmarks/:id
  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update(bookmark_params)
      redirect_to bookmarks_path
    else
      render :edit
    end
  end

  # DELETE /bookmarks/:id
  def destroy
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.destroy
      redirect_to bookmarks_path
    else
      render :show
    end
  end

  # GET /
  # GET /bookmarks
  def index
    @bookmarks = Bookmark.all.order(:title)
  end

  # GET /bookmarks/:id
  def show
    @bookmark = Bookmark.find(params[:id])
  end

  private
  def bookmark_params
    params.require(:bookmark).permit([:url, :title, :comments, :category, :is_favorite])
  end
end

class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all.order(:title)
    # has_favorite = bookmark.is_favorite
    # has_comment = bookmark.comment.present
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
      redirect_to @bookmark, notice: "You have updated the #{@bookmark.title}"
    else
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to @bookmark, notice: "You have deleted the bookmark"
  end

  private
  # Define which parameters are allowed to be used to create a bookmark
  def bookmark_params
    params.require(:bookmark).permit([:title, :url, :category, :comment])
  end
end





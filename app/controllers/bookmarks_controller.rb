class BookmarksController < ApplicationController

  def index
    # @category = params[:category]
    @bookmarks = Bookmark.all.order(:title)
    # Bookmark::CATEGORIES.each do|i|
    #   if i == @category
    #     @bookmarks = Bookmark.where(category: @category).order(:title)
    #   end
    # end
    # render :index
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    bookmark = Bookmark.new(bookmark_params)
    if bookmark.save
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
    redirect_to bookmark_path, notice: "You have deleted the bookmark"
  end

  private

  def bookmark_params
    params.require(:bookmark).permit([:url, :title, :comment, :category, :is_favourite])
  end

end

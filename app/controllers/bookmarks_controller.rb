class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all

    #render text: "THIS WORK NOW"
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.create(bookmark_params)
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
      redirect_to @bookmark, notice: "Great work changing that stuff man!"
    else
      render :edit
    end
  end

  private
    def bookmark_params
      params.require(:bookmark).permit(:title, :url, :comment, :category, :favorite)
    end

end

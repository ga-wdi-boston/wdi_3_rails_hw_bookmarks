class BookmarksController < ApplicationController


  def index
    @bookmarks = Bookmark.all.order(:title)
  end

  def new
    @bookmark = Bookmark.new
  end

  def show
  end

  def create
    @bookmark = Bookmark.create(bookmark_params)
    if @bookmark.save
      flash[:notice] = 'Bookmark created!'
      redirect_to bookmarks_path
    else
      flash.now[:alert]=@bookmark.errors.full_messages.join(', ')
      render :new
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def destroy
    @bookmark = Bookmark.destroy(params[:id])
  end


private
    def bookmark_params
      params.require(:bookmark).permit(:url, :title, :description, :category, :favorite)
    end
end


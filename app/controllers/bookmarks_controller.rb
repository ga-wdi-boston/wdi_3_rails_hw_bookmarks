
class BookmarksController < ApplicationController

  def index
    if params[:category]
      @bookmarks = Bookmark.order(:title).where(category: params[:category])
    else
      @bookmarks = Bookmark.order(:title)
    end
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
      # Were good
      redirect_to bookmark_path(@bookmark)
      # redirect_to bookmark_path(@bookmark.id)
      # redirect_to @bookmark
    else
      # Failed to create
      render :new
    end

  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    bookmark = Bookmark.find(params[:id])
    bookmark.update(bookmark_params)
    redirect_to bookmark
  end

  def destroy
    bookmark = Bookmark.find(params[:id])
    bookmark.destroy
    redirect_to root_path
  end




  private

  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :comment, :category, :is_favorite)
  end

end

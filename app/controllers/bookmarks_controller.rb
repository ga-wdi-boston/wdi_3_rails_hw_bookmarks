class BookmarksController < ApplicationController
  def serious
    @bookmarks = Bookmark.where(category: "serious").order(:title)
    render :filterpage
  end

  def funny
    @bookmarks = Bookmark.where(category: "funny").order(:title)
    render :filterpage
  end

  def useful
    @bookmarks = Bookmark.where(category: "useful").order(:title)
    render :filterpage
  end

  def index
    @bookmarks = Bookmark.order(:title)
  end

  def filterpage
    @bookmarks = Bookmark.order(:title)
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
      redirect_to root_path, notice: 'You created a new product'
    else
      flash.now[:error] = "Could not create"
      render :new
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    @bookmark.update(bookmark_params)
    if @bookmark.valid?
      redirect_to bookmark_path, notice: 'You updated a product'
    else
      flash.now[:error] = "Could not update"
      render :edit
    end
  end


  def destroy
    bookmark = Bookmark.find(params[:id])
    bookmark.destroy
    redirect_to root_path
  end


end


private

def bookmark_params
  params.require(:bookmark).permit(:title, :url,:comment, :is_favorite, :category)
end

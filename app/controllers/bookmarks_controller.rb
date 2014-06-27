class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all.sort_by{ |bookmark| [bookmark.title.downcase]}

    #render text: "THIS WORK NOW"
  end

  #first attempt at Sorting by category!
  def index_by_category(:category)
    @bookmarks =
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

  def update
    @bookmark = Bookmark.find(params[:id])

    if @bookmark.update(bookmark_params)
      redirect_to @bookmark, notice: "Great work changing that stuff man!"
    else
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    redirect_to @bookmark, notice: "Phew thank god that's gone."
  end

  private
    def bookmark_params
      params.require(:bookmark).permit(:title, :url, :comment, :category, :favorite)
    end

end

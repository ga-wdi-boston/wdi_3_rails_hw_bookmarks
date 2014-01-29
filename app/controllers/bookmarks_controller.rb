class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all.order(title: :asc)
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    binding.pry
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      flash[:notice] = 'Created a new bookmark!'
      redirect_to @bookmark
    else
      flash.now[:error] = @bookmark.errors.full_messages.join(', ')
      render :new
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.update(params[:id], bookmark_params)
    @bookmark.save
    redirect_to @bookmark
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to @bookmark
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :comment, :favorite)
  end
end

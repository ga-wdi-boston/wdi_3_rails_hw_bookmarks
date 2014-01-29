class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all.order(title: :asc)
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      flash[:notice] = "Created bookmark"
      redirect_to @bookmark
    else
      flash.now[:error] = @bookmark.errors.full_messages.join(', ')
      render :new
    end
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    @bookmark.assign_attributes(bookmark_params)

    if @bookmark.save
      flash[:notice] = "Updated bookmark"
      redirect_to @bookmark
    else
      flash.now[:errors] = @bookmark.errors.full_messages.join(', ')
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.destroy
      flash[:notice] = "Bookmark deleted"
      redirect_to bookmarks_path
    else
      flash.now[:errors] = @bookmark.errors.full_messages.join(', ')
      redirect_to :back
    end
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :comment, :favorite)
  end
end

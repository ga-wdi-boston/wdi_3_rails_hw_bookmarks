class BookmarksController < ApplicationController
  before_action :find_bookmark, only: [:show, :edit, :update, :destroy]
  def index
    @bookmarks = Bookmark.all.order(title: :asc)
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark_params = bookmark_params
    @bookmark_params[:shorturl] =
      "#{@bookmark_params[:title].split('').shuffle.slice(0,6).join}"
    @bookmark = Bookmark.new(@bookmark_params)
    @bookmark = Bookmark.new(@bookmark_params)
    if @bookmark.save
      flash[:notice] = "Created bookmark"
      redirect_to @bookmark
    else
      flash.now[:error] = @bookmark.errors.full_messages.join(', ')
      render :new
    end
  end

  def show
  end

  def go
    @bookmark = Bookmark.find_by_shorturl(params[:shorturl])
    @bookmark.visits += 1
    @bookmark.save
    redirect_to @bookmark.url
  end

  def edit
  end

  def update
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
  def find_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end

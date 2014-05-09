
class BookmarksController < ApplicationController

  def index
    category = params[:category]

    if params[:category].present?
      @bookmarks = Bookmark.order(:title).where(category: category)
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

  # def serious
  #   @bookmarks = Bookmark.where(category: 'Serious').order(:title)
  #   render :index
  # end

  # def useful
  #   @bookmarks = Bookmark.where(category: 'Useful').order(:title)
  #   render :index
  # end

  # def funny
  #   @bookmarks = Bookmark.where(category: 'Funny').order(:title)
  #   render :index
  # end

  # def search
  #    @bookmarks = Bookmark.where(params[:category])
  #    render :index
  # end



  private

  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :comment, :category, :is_favorite)
  end

end

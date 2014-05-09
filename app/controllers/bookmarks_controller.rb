class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.order(:title)
  end

  def serious
    @bookmarks = Bookmark.where(category: 'Serious').order(:title)
    render :index
  end

  def funny
    @bookmarks = Bookmark.where(category: 'Funny').order(:title)
    render :index
  end

  def useful
    @bookmarks = Bookmark.where(category: 'Useful').order(:title)
    render :index
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
      flash[:error] = 'You created a new sitemark.'
      redirect_to @bookmark
    else
      flash.now[:error] = 'Missing title or url. Ensure url starts with http.'
      render :new
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])

    if @bookmark.update(bookmark_params)
      flash[:error] = 'You have successfully updated stiemark #{@bookmark.title}.'
      redirect_to @bookmark
    else
      flash.now[:error] = 'Missing title or url.'
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    flash[:error] = 'You have deleted a sitemark.'
    redirect_to bookmark_url
  end


  private

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :comment, :category, :is_fav)
  end

end

class BookmarksController < ApplicationController

  # GET /bookmarks/new
  def new
    @view = { bookmark: Bookmark.new, categories: get_categories }
  end

  # POST /bookmarks
  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.valid? && @bookmark.save
      redirect_to bookmarks_path
    else
      render :new
    end
  end

  # GET /bookmarks/:id/edit
  def edit
    @view = { bookmark: Bookmark.find(params[:id]), categories: get_categories }
  end

  # PATCH /bookmarks/:id
  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.valid? && @bookmark.update(bookmark_params)
      redirect_to bookmarks_path
    else
      render :edit
    end
  end

  # DELETE /bookmarks/:id
  def destroy
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.destroy
      redirect_to bookmarks_path
    else
      render :show
    end
  end

  # GET /
  # GET /bookmarks
  def index
    @bookmarks = Bookmark.all.order(:title)
    @category = nil;
    @categories = get_categories
  end

  # GET /bookmarks/:id
  def show
    @view = { bookmark: Bookmark.find(params[:id]), categories: get_categories }
  end

  # POST /bookmarks/category/:category
  def filter_index
    if params[:category] == 'All'
      redirect_to bookmarks_path
    end

    @bookmarks = Bookmark.where('category = ?', params[:category]).order(:title)
    @category = params[:category]
    @categories = get_categories
  end

  # GET bookmarks/counter/:id
  def counter
    bookmark = Bookmark.find(params[:id])
    bookmark.counter += 1
    if bookmark.save
      redirect_to bookmark.url
    else
      render bookmarks_path
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit([:url, :title, :comments, :category, :is_favorite])
  end

  # Returns the category array with 'All' prefixed as the first element
  def get_categories
    ['All'] | Bookmark::CATEGORIES
  end
end

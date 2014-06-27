class BookmarksController < ApplicationController

  # GET /bookmarks/new
  def new
    @bookmark = Bookmark.new
  end

  # POST /bookmarks
  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.valid? && bookmark.save
      redirect_to bookmarks_path
    else
      render :new
    end
  end

  # GET /bookmarks/:id/edit
  def edit
    @bookmark = Bookmark.find(params[:id])
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
    categories = Bookmark.pluck('distinct category').uniq
    bookmarks = Bookmark.all.order(:title)
    url_for_action = 'bookmarks/category/'
    @view = { categories: categories, bookmarks: bookmarks, form_action: url_for_action, category: nil }
  end

  # GET /bookmarks/:id
  def show
    @bookmark = Bookmark.find(params[:id])
  end

  # POST /bookmarks/category/
  def filter_index
    if params[:category] == 'All'
      redirect_to bookmarks_path
    end

    categories = Bookmark.pluck('distinct category').uniq.insert(0, "All")
    bookmarks = Bookmark.where('category = ?', params[:category]).order(:title)
    @view = { categories: categories, bookmarks: bookmarks, form_action: nil, category: params[:category] }
  end

  # GET bookmarks/counter
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
end

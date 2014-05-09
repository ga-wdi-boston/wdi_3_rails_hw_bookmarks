class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.by_category(params[:category])
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
      redirect_to bookmarks_path
    else
      render :new
    end

  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    # retrieves the bookmark (with id from params) from db and assigns it to the Ruby object @bookmark, which is an instance of the
    # Bookmark class, which is a subclass of ActiveRecord. Thus @bookmark inherits all the methods from Active Record.
    @bookmark = Bookmark.find(params[:id])

    # updates the bookmark we just retrieved from the db with whatever is in the params.
    # if the update succeeds, it returns true, in which case it will redirect to the bookmark_path
    # for the given @bookmark
    if @bookmark.update(bookmark_params)
      redirect_to bookmark_path(@bookmark)
    else
    # ellers it will render the edit screen (which will now have errors because it did not succeed).
      render :edit
    end
  end

  def destroy
    bookmark = Bookmark.find(params[:id])
    bookmark.destroy
    redirect_to root_path
  end

  def uncategorized
    @bookmarks = Bookmark.where(category: ['', nil]).order(:title)
    render :index
  end

  def search
    binding.pry
    @bookmarks = Bookmark.where(category: params[:query].capitalize).order(:title)
    render :index
  end

private

  def bookmark_params
    params.require(:bookmark).permit(:title, :category, :comment, :url, :is_favorite)
  end
end

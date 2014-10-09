class BookmarksController < ApplicationController
  # this will run beofre everything, just refactoring DRY don't repeat yourself
  before_action :find_bookmark, only: [:show, :destroy, :edit, :update]

  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(allowed_params)
    @bookmark.save
    redirect_to action: :index
  end

  def show
  end

  def destroy
    @bookmark.destroy
    redirect_to bookmarks_path
  end

  def edit
  end

  def update
    if @bookmark.update(allowed_params)
      redirect_to bookmark_path
    else
      render "edit"
    end
  end

# these can be called only from within the methods of this class only
  private

  def find_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def allowed_params
    params.require(:bookmark).permit(:url, :title, :description, :category, :checkbox)
  end

end



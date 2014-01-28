class BookmarksController < ApplicationController
  before_action :find_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.order(updated_at: :desc)
  end

  def show
  end

  #  Create new bookmarks
  def new
  end

  def create
  end

  # Edit bookmarks
  def edit
    # edit is to update as new is to create
  end

  def update
  end

  def destroy

  end

  # Private methods
  private

  def bookmark_params
    params.require(:bookmark).permits(:url, :title, :comment, :favorite)
  end

  def find_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end

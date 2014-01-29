class BookmarksController < ApplicationController
   before_action :find_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = if params[:show_all].present?
      Bookmark.all
    else
      Bookmark.where('updated_at > ?', 7.days.ago)
    end.order(updated_at: :desc)
  end

  def show
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      flash[:notice] = 'Created a new bookmark!'
      redirect_to @bookmark
    else
      flash.now[:errors] = @bookmark.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    @bookmark.assign_attributes(bookmark_params)

    if @bookmark.save
      flash[:notice] = 'Updated the bookmark!'
      redirect_to @bookmark
    else
      flash.now[:errors] = @bookmark.errors.full_messages
      render :edit
    end
  end

  def destroy
    if @bookmark.destroy
      flash[:notice] = 'Deleted the bookmark!'
      redirect_to action: :index
    else
      flash.now[:errors] = @bookmark.errors.full_messages
      redirect_to :back
    end
  end

  private

  def find_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:URL, :title, :comment, :favorite)
  end
end

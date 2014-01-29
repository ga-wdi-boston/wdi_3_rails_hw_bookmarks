class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all.order(title: :asc)
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to action: :index
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to action: :index
  end

  def show
    redirect_to action: :index
  end

def edit
 @bookmark = Bookmark.find(params[:id])
end

def update
 # Find object using form parameters
 @bookmark = Bookmark.find(params[:id])
 # Update the object
 if @bookmark.update_attributes(bookmark_params)
   redirect_to(@bookmark)
  else
    render :edit
 end
end


  private

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :comment)
  end
end

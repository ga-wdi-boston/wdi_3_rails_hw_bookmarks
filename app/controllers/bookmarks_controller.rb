class BookmarksController < ApplicationController

  #im not sure if i really nead these or what they truly do,
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  #method index collects all the instances of bookmarks
  def index
    @bookmarks = Bookmark.order(:title)
    # @title = Bookmark.title

  end

# method show GETS the bookmark and shows it in a new page
#based upon the id of the bookmark within the table
  def show
    @comments = @bookmark.comments
  end


#this method allows the user to input the new bookmark
  def new
    @bookmark = Bookmark.new
  end

#this method allows the user to actually edit the bookmark
#with the user input boxes
  def edit
  end

#this method is the method that actually creates the new bookmark
#from the input...still kinda magic!
  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to @bookmark, notice: "Bookmark was sucsessfullly Created."
    else
      render :new
    end
  end

#this method is the method that actually updates the new bookmark
#from the input...still kinda magic!
  def update
    respond_to do |format|
      if @bookmark.update(bookmark_params)
        format.html {redirect_to @bookmark, notice: "Bookmark was successfully updated."}
      else
        render :edit
      end
    end
  end

#this method destroys the bookmark...still kinda magic!
  def destroy
    @bookmark.destroy
    respond_to do |format|
      format.html {redirect_to bookmarks_url, notice: "Bookmark was successfully destroyed."}
    end
  end

  private
#magic? not sure if necessary
  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
#gets the parameters from teh user
  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :description, :category, :favorite)
  end
end



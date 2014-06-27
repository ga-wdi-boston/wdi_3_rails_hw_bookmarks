class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end


  # User can view bookmarks in an alphabetical list with titles/categories
  def alphabetize
    @bookmarks = Bookmark.all.order(:title).pluck(:title, category)
  end

  # #GET /products/:id (the prod number)
  # def show
  #   @song = Song.find(params[:id])
  # end
  # # controller => songs, action => show, id => whatever we use when we call this action

  # #GET /products/new
  # def new
  #   @song = Song.new
  # end

  # #POST of /songs
  # def create
  #   #constructs and instantiates a new song instance from the form fields, which live in the params hash
  #   @song = Song.new(song_params)
  #   if @song.save #can be local var bc we arent using it anywhere outside this method
  #     redirect_to song_path #after it saves the new song, this redirects (301) to the overall product list
  #   else
  #     render :new #will go back to the form to try again
  #   end
  # end

  # def edit
  #   @song = Song.find(params[:id])
  # end

  # #Update an exxisting model, Product
  # #ProductsController#update (method for the controller)
  # def update
  #   @song = Song.find(params[:id])

  #   #Using strong params update this product Product#update- mode
  #   if @song.update(song_params)
  #     redirect_to @song, notice: "You have updated the #{@song.name}"
  #   else
  #     # No worky, try again, show me the form you.
  #     render :edit
  #   end
  # end

  #   def destroy
  #     @song = Song.find(params[:id])
  #     @song.destroy

  #     #Show all songs
  #     redirect_to songs_path, notice: "You have deleted the song"
  #   end
  # end

  # private

  # #define which params are allowed to be used to create a song
  # #these are called strong params- they are a security thing
  # def bookmark_params
  #   params.require(:bookmark).permit([:url, :title, :comment, :category, :checkbox])
  # end






end

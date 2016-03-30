class BookmarksController < ApplicationController
  helper_method :commented

  def index
    @bookmarks = Bookmark.all.order(:title)

    #shows the category a bookmark falls under
    @category = params[:category]

    if #bookmark.comment.present?
          #output a link to the show page
    end
  end

  # #GET /products/:id (the prod number)
  def show
    @bookmark = Bookmark.find(params[:id])
  end
  # # controller => songs, action => show, id => whatever we use when we call this action

  # #GET /products/new
  def new
    @bookmark = Bookmark.new
  end

  # #POST of /songs
  def create
    #   #constructs and instantiates a new song instance from the form fields, which live in the params hash
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save #can be local var bc we arent using it anywhere outside this method
      redirect_to bookmark_path(@bookmark.id) #after it saves the new song, this redirects (301) to the overall product list
    else
      render :new #will go back to the form to try again
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  # #Update an exxisting model, Product
  # #ProductsController#update (method for the controller)
  def update
    @bookmark = Bookmark.find(params[:id])

    #   #Using strong params update this product Product#update- mode
    if @bookmark.update(bookmark_params)
      redirect_to @bookmark, notice: "You have updated the #{@bookmark.title}"
    else
      # No worky, try again, show me the form you.
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_path, notice: "You have deleted the bookmark"
  end


private

# #define which params are allowed to be used to create a song
# #these are called strong params- they are a security thing
def bookmark_params
  params.require(:bookmark).permit([:url, :title, :comment, :category, :checkbox])
end






end

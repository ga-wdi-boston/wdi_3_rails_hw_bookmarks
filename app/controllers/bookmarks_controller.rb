class BookmarksController < ApplicationController
  # before_action(:set_bookmark, only: [:show, :edit, :update, :destroy]

    def index
      @bookmarks = Bookmark.all
    end

    # create assigns the info to the new instance
    def create
      # Creates and instance of a new Entry using the user input form the form.
      @bookmark = Bookmark.new(bookmark_params)

      if @bookmark.save
        redirect_to @bookmark, notice: 'Bookmark was successfully created.'
      else
        render :new
      end
    end


    def new
      @bookmark = Bookmark.new

    end


    # GET /entries/1/edit
    # allows us to edit/update the instance
    def edit
      # SELECT * FROM bookmarks WHERE id = 1 LIMIT 1
      @bookmark = Bookmark.find(params[:id])
    end

    def show
      @bookmark = Bookmark.find(params[:id])
    end


    def update
      @bookmark = Bookmark.find(params[:id])
      @bookmark.update(bookmark_params)
      if @bookmark.update(bookmark_params)
        redirect_to @bookmark, notice:
        'Bookmark was successfully updated.'
      else
        render :edit
      end
    end


    def destroy
    # SELECT * FROM bookmarks WHERE id = 1 LIMIT 1
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
      redirect_to bookmarks_url, notice:
     'Entry was successfully destroyed.'
    end


    private

    def bookmark_params
      params.require(:bookmark).permit(:url, :title, :description)
    end

end

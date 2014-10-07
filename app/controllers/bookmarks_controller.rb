class BookmarksController <ApplicationController

	# GET
	def index
		@bookmarks = Bookmark.all
	end

	# GET
	def create
		@bookmark = Bookmark.new(bookmark_params)

		if @bookmark.save
	      redirect_to @bookmark, notice: 'Bookmark was successfully created.'
	    else
	      render :new
	    end
	end

	# GET
	def new
		@bookmark = Bookmark.new
	end

	# GET
	def edit
		@bookmark = Bookmark.find(params[:id])
	end

	# GET
	def show
		@bookmark = Bookmark.find(params[:id])
	end

	# GET
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

	# GET
	def destroy
		@bookmark = Bookmark.find(params[:id])
		@bookmark.destroy
			redirect_to bookmarks_url, notice:
			'Entry was successfully destroyed.'
	end


	private

    def bookmark_params

      params.require(:bookmark).permit(:url, :title, :comment)
    end
end
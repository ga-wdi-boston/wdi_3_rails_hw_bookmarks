class BookmarksController < ApplicationController
	def index
		@bookmarks = Bookmark.all
	end

	def show
		@bookmark = Bookmark.find(params[:id])
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
			flash.now[:error] = @bookmark.errors.full_messages.join(', ')
			render :new
		end
	end

	def edit
		@bookmark = Bookmark.find(params[:id])
	end

	def update
		@bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      flash[:notice] = 'Your bookmark has been updated!'
      redirect_to @bookmark
    else
      flash.now[:error] = @bookmark.errors.full_messages
      render :edit
    end
  end

  def destroy
  	@bookmark = Bookmark.new(bookmark_params)

    if @bookmark.destroy
      flash[:notice] = 'Your bookmark has been deleted!'
      redirect_to action: :index
    else
      flash.now[:error] = @bookmark.errors.full_messages
      redirect_to @bookmark
    end
  end

	private

	def bookmark_params
		params.require(:bookmark).permit(:url, :title, :comment, :favorite)
	end
end

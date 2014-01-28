class BookmarksController < ApplicationController

  def show
  	@bookmark = Bookmark.find(params[:id])
  end

  def index
  	@bookmarks = Bookmark.all
  end

  def new
  	@bookmark = Bookmark.new
  end


	def create
		@bookmark = Bookmark.new(bookmark_params)
		@bookmark.save

		if @bookmark.save
			flash[:notice] = 'created a new bookmark!'
			redirect_to @bookmark
		else
			flash.now[:error] = @bookmark.errors.full_messages.join(", ")
			render :new
		end

	end

	private

	def bookmark_params
		params.require(:bookmark).permit(:name, :url)
	end

end




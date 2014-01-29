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
			redirect_to @bookmark
		else
			render :new
		end

	end

	def edit
		@bookmark = Bookmark.find_by( id: params[:id])
	end

  def update
  	@bookmark = Bookmark.find_by( id: params[:id])
    @bookmark.assign_attributes(bookmark_params)
    if @bookmark.save
      redirect_to @bookmark
    else
      render :edit
    end
  end

  def destroy
  	@bookmark = Bookmark.find_by( id: params[:id])
    if @bookmark.destroy
      redirect_to action: :index
    else
      redirect_to :back
    end
  end

	private

	def bookmark_params
		params.require(:bookmark).permit(:name, :url, :favorite)
	end
end




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

	def edit
		@bookmark = Bookmark.find_by( id: params[:id])
	end

  def update
  	@bookmark = Bookmark.find_by( id: params[:id])
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
  	@bookmark = Bookmark.find_by( id: params[:id])
    if @bookmark.destroy
      flash[:notice] = 'Deleted the bookmark!'
      redirect_to action: :index
    else
      flash.now[:errors] = @bookmark.errors.full_messages
      redirect_to :back
    end
  end

	private

	def bookmark_params
		params.require(:bookmark).permit(:name, :url)
	end
end




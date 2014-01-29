class BookmarksController < ApplicationController
	before_action :find_bookmark, only: [:show, :edit, :update, :destroy]

	def index
		@bookmark = Bookmark.all
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
			flash.now[:errors] = @bookmark.errors.full_messages
			render :new
		end
	end

	def edit
		@bookmark = Bookmark.find(params[:id])
	end

	def update

		@bookmark.assign_attritutes(blat_params)
		if @blat.save
			flash[:notice] = 'Updated the bookmark!'
			redirect to @bookmark
		else
			flash.now[:errors] = @bookmark.errors.full_messages
			render :edit
		end

	end

	def delete
		@bookmark = nil
	end

	def destroy

		if @bookmark.destroy
			flash[:notice] = 'Deleted the bookmark'
			redirect_to action: :index
		else
			flash.now[:errors] = @bookmark.errors.full_messages
			redirect_to :back
		end

	end

	def find_bookmark
		@bookmark = Bookmark.find(params[:id])
	end

	private

	def bookmark_params
		params.require(:bookmark).permit(:title, :url, :comment, :favorite)
	end

end
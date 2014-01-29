class BookmarksController < ApplicationController
	before_action :find_bookmark, only: [:edit, :update, :destroy, :show]

	def index
		@bookmarks = Bookmark.all.order(:title)
	end
	def new
		@bookmark = Bookmark.new
	end

	def show
		redirect_to @bookmark.url
		@bookmark.increment! :clicked
	end

	def create
		@bookmark = Bookmark.new(bookmark_params)
		if @bookmark.save
			flash[:notice] = 'Bookmark saved'
			redirect_to root_url
		else
			flash.now[:error] = @bookmark.errors.full_messages.join(', ')
			render :new
		end
	end

	def edit
	end

	def update
		@bookmark.assign_attributes(bookmark_params)

		if @bookmark.save
			flash[:notice] = 'Bookmark updated!'
			redirect_to root_url
		else
			flash.now[:error] = @bookmark.errors.full_messages.join(', ')
			render :edit
		end
	end

	def destroy
		if @bookmark.destroy
			flash[:notice] = 'Bookmark deleted'
			redirect_to root_url
		else
			flash.now[:error] = @bookmark.errors.full_messages.join(', ')
			redirect_to :back
		end
	end

	private

	def find_bookmark
		@bookmark = Bookmark.find(params[:id])
	end

	def bookmark_params
		params.require(:bookmark).permit(:title, :url, :comment, :favorite)
	end
end

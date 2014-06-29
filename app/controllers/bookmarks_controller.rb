class BookmarksController < ApplicationController

  def index
    if params[:filter_id].nil?
      @bookmarks = Bookmark.all.order(:title)
    else
      @bookmarks = Bookmark.filter_by_category(params[:filter_id])
    end
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark= Bookmark.new(bkmk_params)


    if @bookmark.save
      flash[:notice] = "Bookmark Created"
      redirect_to @bookmark
    else
      flash.now[:alert] = @bookmark.errors.full_messages.join(". \r\n") + '.'
      render :new
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])

    if @bookmark.update(bkmk_params)
      flash[:notice] = "Bookmark Updated"
      redirect_to(@bookmark)
    else
      flash.now[:alert] = @bookmark.errors.full_messages.join(' ')
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.delete
    redirect_to(bookmarks_path)
  end

  def redirect
    @bookmark = Bookmark.find(params[:id])
    @bookmark.click_count += 1
    @bookmark.save
    redirect_to(@bookmark.url)

  end

  private

  def bkmk_params
    params.require(:bookmark).permit([:url, :title, :comment, :category, :is_favorite])
  end

end

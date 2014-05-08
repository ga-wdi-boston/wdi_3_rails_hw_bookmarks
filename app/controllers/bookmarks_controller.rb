class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.order(:title)
  end
  def show
    #binding.pry
    #@bookmark = Bookmark.find(params)[:id]
  end
end


# def new
#  @player = Player.new
#end

# def create
#   player = Player.create(player_params)
#   redirect_to player
# end

# private

# def player_params
#   params.require(:player).permit(:name, :description,:health, :magic, :is_alive)
# end

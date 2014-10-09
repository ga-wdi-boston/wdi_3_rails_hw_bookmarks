class Comment < ActiveRecord::Base
  belongs_to :bookmarks  dependent::destroy

end

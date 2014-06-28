class Bookmark < ActiveRecord::Base
validates :category, presence: true
end

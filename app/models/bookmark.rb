class Bookmark < ActiveRecord::Base
  validates :url, :title, :description, :category, :favorite_flag
end

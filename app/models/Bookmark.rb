class Bookmark < ActiveRecord::Base
  validates :url, presence: true, uniqueness: true, format:{:with => /https?:\/\/[\S]+/}
  # validates that the name is unique
  validates :title, presence: true

end

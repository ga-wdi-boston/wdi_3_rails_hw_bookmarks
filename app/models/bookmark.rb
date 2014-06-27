class Bookmark < ActiveRecord::Base
  #validate that we have a name
  validates :title, presence: true

  #validates :url, uniqueness: true
  validates :url, presence: true


  #validate that the format is correct, dd.dd
  #validates :url, format: { :with => /https?:\/\/[\S]+/}
end

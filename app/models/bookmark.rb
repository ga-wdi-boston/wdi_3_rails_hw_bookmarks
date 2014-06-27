class Bookmark < ActiveRecord::Base
  #validate that we have a name
  validates :title, presence: true

  validates :url, uniqueness: true
  validates :url, presence: true


  validates :url, format: { :with => /https?:\/\/[\S]+/}
end

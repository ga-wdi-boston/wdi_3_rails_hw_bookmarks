class Bookmark < ActiveRecord::Base

  validates :title, presence: true

  validates :url, uniqueness: true
  validates :url, presence: true


  validates :url, format: { :with => /https?:\/\/[\S]+/}
end

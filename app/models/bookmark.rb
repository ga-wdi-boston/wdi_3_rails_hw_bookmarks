class Bookmark < ActiveRecord::Base

  has_one :category

  validates :title, presence: true

  validates :url, uniqueness: true
  validates :url, presence: true


  validates :url, format: { :with => /https?:\/\/[\S]+/}
end

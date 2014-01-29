class Bookmark < ActiveRecord::Base
  validates :name, presence: true
  validates :url, presence: true
  validates :url, format: { with: /https:/, message: "no http at start of url" }
end

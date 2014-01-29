class Bookmark < ActiveRecord::Base
	validates :title, presence: true
	validates :url, presence: true
	validates :comment, presence: true
	validates :favorite, presence: true
end
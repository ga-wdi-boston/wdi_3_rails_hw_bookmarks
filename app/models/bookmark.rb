class Bookmark < ActiveRecord::Base

	validates_presence_of :title, :url
	validates_length_of :title, maximum: 100

end

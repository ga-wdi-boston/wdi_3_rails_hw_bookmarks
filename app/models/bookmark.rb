class Bookmark < ActiveRecord::Base
	validates_presence_of :title, :url
	 validates :url, :format => { :with => /\Ahttp:\/\//,
    :message => "must start with http://" }
end


class Bookmark < ActiveRecord::Base
  CATEGORY = ['Funny','Useful','Serious']

  validates :title, presence: true
  validates :url, format: { with: /[http|https]\:\/\/.*/, message: "Not a valid URL! Must start with http(s)."}
#   validates :url, format: { with: /URI.regexp/}
#   validates :url, format: { with: /URI.regexp/ }

end



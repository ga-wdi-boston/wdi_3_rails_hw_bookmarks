class Bookmark < ActiveRecord::Base
CATEGORIES = ['Serious', 'Funny', 'Useful']

validates :url, presence: true
validates :url, format: URI::regexp(%w(http https))
validates :title, presence: true
end
# (^(http|https):\/\/|[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}(:[0-9]{1,5})?(\/.*)?))
# (%w(http https))
# (/^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/)
# validates :url, format: { with /URI.regexp/ }

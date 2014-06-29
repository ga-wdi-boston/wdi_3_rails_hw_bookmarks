class Bookmark < ActiveRecord::Base

# validates that bookmark has a title
validates :title, presence: true

CATEGORIES = ['Serious', 'Funny', 'Useful']
# validates that a category must be one the above
validates :category, inclusion: { in: CATEGORIES }

TRUE_FALSE = ['true', 'false']
# validates that is_favoritr must be true or false
validates :is_favorite, inclusion: { in: TRUE_FALSE }

# validates that a url is present and the format is correct (starts with http)
validates :url, presence: true
validates :url, format: { :with => /\Ahttp.+\z/ }

end

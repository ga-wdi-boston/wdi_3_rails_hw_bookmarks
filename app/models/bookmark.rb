class Bookmark < ActiveRecord::Base
  # validates that url is required and starts with http://
  validates :url, presence: { message: 'A URL is required' }
  validates :url, format: { with: /\A(http|https):\/\/[a-z0-9]+/, message: 'URLs must begin with http:// or https://' }

  # validates that title is required
  validates :title, presence: { message: 'A title is required' }
end

class Bookmark < ActiveRecord::Base
  # validates that url is required and starts with http://
  validates :url, presence: true
  validates :url, format: {with: /\Ahttp\:\/\/\w+/}

  # validates that title is required
  validates :title, presence: true
end

class Bookmark < ActiveRecord::Base
  CATEGORIES = %w[Serious Funny Useful]

  # URL required with protocol prefix
  validates :url, presence: { message: 'A URL is required' }
  validates :url, format: {
    with: /\A(http|https):\/\/[a-z0-9]+/,
    message: 'URLs must begin with http:// or https://'
  }

  # Title required
  validates :title, presence: { message: 'A title is required' }
end

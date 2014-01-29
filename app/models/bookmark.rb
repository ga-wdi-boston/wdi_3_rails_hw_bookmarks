class Bookmark < ActiveRecord::Base
# Validations
  validates :title, presence: true, length: { maximum: 100 }
  validates :url, presence: true, format: { with: /\b(http:)|(https:).*\b/}
end

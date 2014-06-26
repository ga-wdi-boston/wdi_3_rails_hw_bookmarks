class Bookmark < ActiveRecord::Base
  validates :url, presence: true, format: {with: /\Ahttp:\/\//}
end

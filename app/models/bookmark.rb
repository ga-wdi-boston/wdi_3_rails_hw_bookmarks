class Bookmark < ActiveRecord::Base
  validates_presence_of :title, :url
  validates :url, format: { with: /\Ahttp:\/\//, message: "requires http:// at the beginning"}
end

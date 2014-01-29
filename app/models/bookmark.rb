class Bookmark < ActiveRecord::Base
  validates :URL, presence: true, length: { maximum: 140 }
  validates :title, presence: true
end

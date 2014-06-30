class Bookmark < ActiveRecord::Base

  VALID_CATEGORIES = [:serious, :funny, :thoughtful]

  # scope :category, -> (category) { where category: category }
  # scope :location, -> (location_id) { where location_id: location_id }
  # scope :starts_with, -> (name) { where("name like ?", "#{name}%")}




  validates :url, presence: true
  validates :url, uniqueness: true
  validates :url, :format => URI::regexp(%w(http https))


  validates :title, presence: true
  validates :title, uniqueness: true

  validates :category, inclusion: { in: VALID_CATEGORIES }

  # validates :category, presence: true
  # validates :category, uniqueness: true

end

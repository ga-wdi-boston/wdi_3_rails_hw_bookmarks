class Bookmark < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :tags, dependent: :destroy
  validates :url,:title, presence: true
end
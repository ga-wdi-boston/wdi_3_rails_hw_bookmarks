class Bookmark < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :tags, dependent: :destroy
  validates :title, presence: true
  validates :url, presence:true # make a regex for this— format: { with: //, message: 'Must be a proper URL!'}
end
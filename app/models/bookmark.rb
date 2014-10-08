class Bookmark < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :tags, dependent: :destroy
  validates :title, presence: true
  validates :url, presence:true #, format: { with: //, message: 'Must be a proper URL!'}
end
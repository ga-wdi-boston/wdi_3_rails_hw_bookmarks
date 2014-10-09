class Comment < ActiveRecord::Base
  belongs_to :bookmark
  has_many :replies, as: :commentable
  validates :body, presence: true
end
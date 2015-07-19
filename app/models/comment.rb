class Comment < ActiveRecord::Base
  belongs_to :bookmark
  validates :body, presence: true
end

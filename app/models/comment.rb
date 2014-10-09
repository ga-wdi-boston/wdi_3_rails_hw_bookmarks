class Comment < ActiveRecord::Base
  belongs_to :bookmark
  has_many :subcomments, dependent: :destroy
end
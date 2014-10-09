class Tag < ActiveRecord::Base
  belongs_to :bookmark
  validates :tag_text, presence: true
end
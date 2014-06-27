class Bookmark < ActiveRecord::Base

  CATEGORIES = %w(funny useful serious)

  validates :title, length: { minimum: 5 }
  validates :url, presence: true, format: { :with => /\A(http:\/\/)/ }
  validates :is_favorite, inclusion: { in: [true, false] }


  def has_comment?
    self.comment?
  end
end

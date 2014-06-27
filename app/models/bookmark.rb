class Bookmark < ActiveRecord::Base
  CATEGORIES = %W(serious funny useful)

  validates(:url, format: {with: /\A(http:\/\/).+\z/}, presence: true)
  validates(:category, inclusion: {in: Bookmark::CATEGORIES})


  def self.filter_by_category(cat)
    self.where(category: cat)
  end
end

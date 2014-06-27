class Bookmark < ActiveRecord::Base
  cats = %W(serious funny useful)
  CATEGORIES = cats.map{|cat| [cat, cat]}
  NUM_OF_CATEGORIES = CATEGORIES.size

  def self.filter_by_category(cat)
    self.where(category: cat)
  end
end

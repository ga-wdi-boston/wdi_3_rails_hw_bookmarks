class Bookmark < ActiveRecord::Base
  cats = %W(serious funny useful)
  CATEGORIES = cats.map.with_index{|cat, i| [cat, i]}
  NUM_OF_CATEGORIES = CATEGORIES.size

  def self.filter_by_category(cat)
    self.where(category: Bookmark::CATEGORIES[cat][0])
  end
end

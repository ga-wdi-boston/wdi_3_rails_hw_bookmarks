class Bookmark < ActiveRecord::Base
  CATEGORIES = ['', 'Useful', 'Funny', 'Serious', 'Depressing', 'Wonderous']

  # makes sure the URL starts with http:// OR https://
  validates :url, format: { :with => /\Ahttp[s]?\:\/\/.*/ }

  # This is a class method
  # Which means I call it on the class, not an instance of the class
  # I frequently use this to filter down the entire table
  def self.by_category(category)
    if category == 'uncategorized'
      Bookmark.where('category is NULL OR category = \'\'').order(:title)
    elsif category
      Bookmark.where(category: category).order(:title)
    else
      Bookmark.order(:title)
    end
  end
end

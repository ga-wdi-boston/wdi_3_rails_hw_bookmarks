class Bookmark < ActiveRecord::Base

  VALID_CATEGORY = ['funny', 'useful', 'serious']

  validates :title, presence: true
  validates :url, presence: true, format: { with: /\Ahttp/ }
  validates :category, inclusion: { in: VALID_CATEGORY }


end

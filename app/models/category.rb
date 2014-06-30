class Category < ActiveRecord::Base
  belongs_to :bookmark
  validates :name, presence: true
end

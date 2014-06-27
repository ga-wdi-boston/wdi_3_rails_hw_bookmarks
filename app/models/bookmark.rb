class Bookmark < ActiveRecord::Base
  validates :title, presence:true
  validates :title, uniqueness:true
  validates :title, length:{minimum: 3}

  validates :url, presence:true
  validates :url, uniqueness:true

  # if I wanted to easily add categories I could make them instance variables
  # in this class and then in the index and form radio buttons I could add
  # a loop that would give the category options, reducing redundancy and saving
  # a lot of time for adding new categories.

end

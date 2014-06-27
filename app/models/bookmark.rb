class Bookmark < ActiveRecord::Base
  validates :title, presence:true
  validates :title, uniqueness:true
  validates :title, length:{minimum: 3}

  validates :url, presence:true
  validates :url, uniqueness:true

end

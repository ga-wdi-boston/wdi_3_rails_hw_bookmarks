class Bookmark < ActiveRecord::Base
  CATEGORY = ['Funny','Useful','Serious']

  validates :title, presence: true
  # validates :url, format: { with: /\A(http|https)\Z/i,
  #                 message: "Must be a valid URL, starting with http or https" }

end



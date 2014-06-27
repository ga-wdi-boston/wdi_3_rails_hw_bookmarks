class Bookmark < ActiveRecord::Base
  def has_comment?
    self.comment?
  end
end

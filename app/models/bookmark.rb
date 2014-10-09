class Bookmark < ActiveRecord::Base
  # Add validations here
  # validates :name, presence: true
  has_many :comments, dependent: :destroy
end

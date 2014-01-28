class Bookmark < ActiveRecord::Base
	#When we inherit from ActiveRecord::Base, Rails turns our class name into snake_case, pluralizes it, and looks for a table with that name.  It sets up the class with attributes that match the columns from that table! (table name "blats" in this case)
	#We can set and get all of these attributes

#validates_presence of is a method that takes the parameters (title, body) it could be writte as validates_presence_of(title, body) but that's not the convention

	# validates_presence_of :title, :body
	# validates_length_of :title, maximum: 100
end
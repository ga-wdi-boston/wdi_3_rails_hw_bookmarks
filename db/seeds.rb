# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
# require 'ffaker'

7.times do
  Bookmark.create!(url: Faker::Internet.url, title: Faker::Address.street_name, description: Faker::Lorem.sentence(3) , category: ["serious", "funny", "useful"].sample, favorite:[true, false].sample)
end

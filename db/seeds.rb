Bookmark.delete_all

Bookmark.create(
  url: 'https://github.com/styleguide/ruby',
  title: 'Ruby Styleguide',
  comment: 'This guide is an attempt to document Ruby coding style & best practices.',
  category: 'useful',
  is_favorite: false
)

Bookmark.create(
  url: 'http://wdisydney.github.io/',
  title: 'WDI Sydney Yearbook',
  comment: 'An introduction to Sydney''s WDI Summer 2013 cohort & an overview of their in-class projects.',
  category: 'funny',
  is_favorite: true
)

Bookmark.create(
  url: 'http://entity-lookup.leftlogic.com/',
  title: 'HTML Entity Lookup',
  comment: 'Using HTML entities is the right way to ensure all characters on your page are validated.',
  category: 'useful',
  is_favorite: false
)

Bookmark.create(
  url: 'http://sewingandembroiderywarehouse.com/embtrb.htm',
  title: 'Sewing and Embroidery Warehouse',
  comment: 'What NOT to do when writing your HTML.',
  category: 'funny',
  is_favorite: true
)

Bookmark.create(
  url: 'http://www.fontspring.com/',
  title: 'Fontspring',
  comment: 'Thousands of fonts with easy licensing for desktop, web, ebooks and apps.',
  category: 'useful',
  is_favorite: false
)

Bookmark.create(
  url: 'https://gist.githubusercontent.com/njonsson/107343/raw/The%20difference%20between%20the%20junior%20and%20senior%20Rails%20developer',
  title: 'Junior vs Senior Rails Developers',
  comment: 'Really helpful read on what it takes to make the jump from junior to senior rails developer.',
  category: 'serious',
  is_favorite: true
)

Bookmark.create(
  url: 'http://www.smashingmagazine.com/2009/08/17/taming-advanced-css-selectors/',
  title: 'Taming Advanced CSS Selectors',
  comment: 'Advanced style selectors are typically not used to their full potential. Some helpful resources are included below.',
  category: 'useful',
  is_favorite: false
)

Bookmark.create(
  url: 'http://readwrite.com/2013/09/30/understanding-github-a-journey-for-beginners-part-1#awesm=~oyB9EyoeKuQryj',
  title: 'GitHub for Beginners',
  comment: 'Every developer needs to learn how to use GitHub.',
  category: 'serious',
  is_favorite: false
)

Bookmark.create(
  url: 'http://subtlepatterns.com/',
  title: 'Subtle Patterns',
  comment: 'A resource for anyone in need of tilable, textured patterns, free to use.',
  category: 'useful',
  is_favorite: true
)




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

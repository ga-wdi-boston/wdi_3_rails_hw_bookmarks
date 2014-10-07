# Bookmarkr&trade;

*"Who got this CRUD all over my bookmarks?"*

Create a Rails app that allows me to track my bookmarks! Bookmarks have:

* a URL (required, must start with "http")
* a title (required)
* a comment or description (optional)
* a category (optional, select from "Serious", "Funny", or "Useful")
* a checkbox that indicates this is a "favorite" bookmark (optional)


    # Okay, so I have my model:
    Bookmark
      string url
      string title
      string description
      bool favorite

The app root should show a list of all my bookmarks, sorted by title. `Which means, GET /root should return a page displaying all bookmarks.` URL and comment should not be displayed here, but I should be able to see which bookmarks have a comment `don't display the comment in the index, just have "has comment yes/no"`, as well as which ones are "favorite". Clicking a bookmark's title should take me to its URL, and there should be an option to view all attributes of a bookmark `i.e. /books/:id`. I should be able to add new bookmarks and edit or delete existing bookmarks `CRUDdability - basically just add resources :bookmarks to routes.rb`. I should also be able to filter the list by category (e.g. show me only Serious bookmarks) *filter is optional*. `N/A`

Since this is a decently-sized project, put some polish into it! The details of how to display the needed information are up to you &ndash; make your bookmarker a product someone would actually want to use. If you're feeling ambitious, you can try a CSS framework like [Bootstrap](http://getbootstrap.com/getting-started) or [Foundation](http://foundation.zurb.com/docs/applications.html).

The *only* thing you can use a generator for, is creating new migrations. Scaffolding or other generators give -10 points to Ravenclaw.

One more thing: Make sure you provide some working seed data so we can easily test your app without typing in a bunch of bookmarks. Pulling down a fresh copy of your app and running `rake db:setup` should not give any errors.

## Specifications

* App has a database schema with appropriate columns and indexes
* App has working seed data that creates a variety of bookmarks
* User can view bookmarks in an alphabetical list with titles/categories (category optional)
* User can view all attributes of a specific bookmark
* User can submit new bookmarks
* User can edit the attributes of existing bookmarks
* User can delete existing bookmarks
* App has at least basic styles to provide an attractive and intuitive experience
* App generates HTML and CSS that validates with no errors
* Code is placed in the correct locations and files according to Rails conventions
* Code follows style conventions and has descriptive variable and method names
* Repository has clean, logical, single-task commits with descriptive messages

## Extra Challenges

* Instead of the real URL, link bookmark titles to another path within your app that redirects to the real URL and increments a click-tracking counter. This will allow me to share specific bookmarks with friends and track their popularity.
* A bookmark can have many comments
* Extra points will be awarded for crafting an impressive and attractive user experience that makes use of a CSS framework such as Bootstrap or Foundation.

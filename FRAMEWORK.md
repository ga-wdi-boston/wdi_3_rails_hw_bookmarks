Database: Bookmarks

Entry Attributes / Columns:
  * URL (required, must start with "http://")
  * title (required)
  * description (optional)
  * category (optional, select from "Serious", "Funny", or "Useful")
  * favorite: a checkbox that indicates this is a "favorite" bookmark (optional)


Index View: index.html.erb  -->  /bookmarks
  * show ALL bookmarks
  * sorted by title
  * show only columns: title, category, favorite, description (only show whether one exists)
  * do NOT display URL or description
  * Titles link to individual entry page
  * Optional: allow filter by category

Show View: /bookmarks/:id
  * shows bookmark URL
  * option (or button) to view all attributes of the bookmark

Create/Edit/Delete:
  * Need to be able to create, edit, and delete entries.

Seed Data
  * Provide testing data for testing
  * Should not produce any errors when pulling down a fresh copy of app and running `rake db:setup`.

NEXT STEPS AFTER DAY 1:
  * modify size of text fields to match requested input
  * change boolean in favorite to checkbox
  * link bookmark in title to show view
  * make urls in show view link to actual site
  * dropdown menu to select category
  * how to show a bookmark *has* a description in index view without showing full description?
  * include delete and edit buttons on show view as well
  * validate: urls start with http://

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


## Day 2 -- COMMENTS

Each bookmark has many comments.
Comment database (belongs_to :bookmarks)
  * Message (string)
  * Name (string)
  *

Make use of the `has_many` relationship to add the ability of commenting on each bookmark. A user should be able to:

* View all comments on a bookmark on the bookmark's show page.
  - make all comments viewable on show page, where comments are in an associated database
* Delete a comment
* Edit a comment on another page
* View a specific singular comment
* See the number of comments each Bookmark has on the Bookmark index
* When you delete a bookmark, make it so that the comments are automatically deleted


## Extra Challenges

* Instead of the real URL, link bookmark titles to another path within your app that redirects to the real URL and increments a click-tracking counter. This will allow me to share specific bookmarks with friends and track their popularity.
* Comments can have sub-comments in a nested manner similar to Reddit or Hacker News.
* Extra points will be awarded for crafting an impressive and attractive user experience that makes use of a CSS framework such as Bootstrap or Foundation.

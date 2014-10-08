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
  * Need to be able to create, edit, and delte entries.

Seed Data
  * Provide testing data for testing
  * Should not produce any errors when pulling down a fresh copy of app and running `rake db:setup`.



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

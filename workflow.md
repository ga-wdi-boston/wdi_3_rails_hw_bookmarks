First, you want to make your **model**.

In this case, you want to make bookmarks.

So, you create a new file named `bookmark.rb` under `app/models`.

In this file, you create a new class called `Bookmark`. Singular, since it's an instance of a `Bookmark`. Rails expects models to be in singular form.

This class will inherit from `ActiveRecord::Base`.

You do not need to add anything inside the class definition. You just need to define it.

Now that you have your model, you want to create a database, and create your model's its matching table in the database. This means you have to generate a **migration**.

In the project root directory, type `rake db:create`, then `rails g migration Bookmarks url title description (etc)`. A migration file will be created under `db/migrate`.

Add `t.timestamps null: false` to the end of `def change`.

Now, you need to create this table in your database. Otherwise, you can't actually save your bookmarks anywhere.

Type `rake db:migrate`, and you should see SQL queries detailing a new table being created.

At this point, you should open up `rails console` and check to see that you can create a new Bookmark object:

    bookmark = Bookmark.new

If running this command returns a new bookmark with empty fields, then you should be able to *create* new Bookmark objects and *save* them to the database.

At this point, you are ready to move onto the **controller**.

Since this is a typical CRUD app, the first thing you want to do is add `resources :bookmarks` to `routes.rb`, inside the top-level block. This will automatically make a few routes for you within Rails:

           Prefix Verb   URI Pattern                   Controller#Action
        bookmarks GET    /bookmarks(.:format)          bookmarks#index
                  POST   /bookmarks(.:format)          bookmarks#create
     new_bookmark GET    /bookmarks/new(.:format)      bookmarks#new
    edit_bookmark GET    /bookmarks/:id/edit(.:format) bookmarks#edit
         bookmark GET    /bookmarks/:id(.:format)      bookmarks#show
                  PATCH  /bookmarks/:id(.:format)      bookmarks#update
                  PUT    /bookmarks/:id(.:format)      bookmarks#update
                  DELETE /bookmarks/:id(.:format)      bookmarks#destroy

The rest of your work will be making sure all these routes exist and do what you expect them to. Unless you have a testing framework, you'll be visiting all these links. Have fun!

If you try to visit `/bookmarks` right now, it says `uninitialized constant BookmarksController`. This is an example of letting the errors drive development. Start from the one thing you want to do - go to `/bookmarks` and have all your bookmarks displayed - do it over and over again and fix each error that pops up.

Create `bookmarks_controller.rb` under `app/controllers`, and inside define the `BookmarksController` class, inheriting from `ApplicationController`.

From here, what you do will depend on what you want your routes to do. e.g., if you want `/bookmarks` to display an index, define an `#index` method, get it to display a blank page, etc. This is easiest if you use Rails' default RESTful architecture setup - test all the links it gives you from adding `resources :bookmarks`, and make sure they work.

(Note to self: maybe it makes a little more sense to make your *view* first, expecting your code to look a certain way and knowing what you want to display to your users, and then start on the controller...hm.)

### Misc. Notes

For a "new" page, you're gonna make a form based on a Bookmark object. It looks like this:

    <%= form_for(@bookmark) do |f| %>
      <div class="field">
        <%= f.label :url %><br>
        <%= f.text_field :url %>
      </div>
      <div class="field">
        <%= f.label :title %><br>
        <%= f.text_field :title %>
      </div>
      <div class="field">
        <%= f.label :description %><br>
        <%= f.text_field :description %>
      </div>
      <div class="actions">
        <%= f.submit %>
      </div>
    <% end %>

Just copy and paste that.

`def create`, `def update`, and `def destroy` should NOT display pages.
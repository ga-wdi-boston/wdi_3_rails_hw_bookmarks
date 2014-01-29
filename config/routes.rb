Bookmarker::Application.routes.draw do

  # get "bookmarker/index"
  # get "bookmarker/show"
  # get "bookmarker/create"
  # get "bookmarker/edit"
  # get "bookmarker/delete"

  resources :bookmarks
  root to: 'bookmarks#index'

end

Bookmarker::Application.routes.draw do
  resources :bookmarks # this will generate a bunch of routes automatically
  root to: 'bookmarks#index'
end

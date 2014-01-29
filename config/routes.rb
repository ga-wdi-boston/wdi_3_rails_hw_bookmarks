Bookmarker::Application.routes.draw do
  resources :bookmarks
  put '/bookmarks/ext/:id' => 'bookmarks#ext', as: 'bookmarks_ext'
  get '/bookmarks/ext/:id' => 'bookmarks#ext'
  root to: 'bookmarks#index'
end

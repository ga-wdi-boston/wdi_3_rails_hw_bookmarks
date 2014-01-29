Bookmarker::Application.routes.draw do
  resources :bookmarks
  get '/bookmarks/ext/:id' => 'bookmarks#ext', as: 'bookmarks_ext'
  root to: 'bookmarks#index'
end

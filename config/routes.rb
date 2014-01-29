Bookmarker::Application.routes.draw do
  resources :bookmarks
  get 'bookmarks/p.scott/:shorturl' => 'bookmarks#go', as: 'redirect'
  root to: 'bookmarks#index'
end

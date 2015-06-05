Rails.application.routes.draw do
  resources :bookmarks
  resources :comments
  root 'bookmarks#index'
end








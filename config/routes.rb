Rails.application.routes.draw do

  get '/bookmarks/sport', to: 'bookmarks#sport'
  get '/bookmarks/technology', to: 'bookmarks#technology'
  get '/bookmarks/business', to: 'bookmarks#business'

  resources :bookmarks

end

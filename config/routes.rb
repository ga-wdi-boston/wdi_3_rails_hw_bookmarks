Rails.application.routes.draw do

  get '/bookmarks/serious', to: 'bookmarks#serious'
  get '/bookmarks/funny', to: 'bookmarks#funny'
  get '/bookmarks/useful', to: 'bookmarks#useful'
  get '/', to: 'bookmarks#index'
  resources :bookmarks

end

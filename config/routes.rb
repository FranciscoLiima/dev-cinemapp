Rails.application.routes.draw do
  
  resources :favorite_movies
  
  root  'movies#index'
  get   'movies/index'
  post  'movies/index'
  
  match "*path", to: redirect('/404') , via: [ :get, :post, :delete ]
end

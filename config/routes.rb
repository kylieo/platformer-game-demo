Rails.application.routes.draw do

  resources :users
  root :to => 'sessions#new'

  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'

  delete '/login' => 'sessions#destroy', as: 'logout'

  get '/game' => 'game#new'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/home' => 'pages#home', as: 'home'

  resources :games
  resources :users

end

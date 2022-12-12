Rails.application.routes.draw do
  # resources :reviews
  # resources :airlines, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/airlines', to: 'airlines#index'
  get '/airlines/:id', to: 'airlines#show'
  post '/airlines', to: 'airlines#create'
  patch '/airlines/:id', to: 'airlines#update'
  delete '/airlines/:id', to: 'airlines#destroy'
  post '/reviews', to: 'reviews#create'
  delete '/reviews/:id', to: 'reviews#destroy'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show'
  #get '/login', to: 'users#show'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/users', to: 'users#index'
end

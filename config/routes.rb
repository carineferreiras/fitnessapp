Rails.application.routes.draw do
  
  # Users
  post '/signup', to: 'user#create'
  patch '/profile', to: 'user#update'
  put '/profile', to: 'user#update'
  get '/profile', to: 'user#index'

  # Sessions
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :exercises, only: [:create, :index]
  resources :workouts, only: [:index, :show]

  # Admin
  namespace :admin do
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'

    resources :workouts, only: [:create, :index, :show, :update, :destroy]
    resources :users, only: [:show, :index]
    resources :exercises, only: [:index]

    # resources :products, only: [:create, :index, :show, :update, :destroy]
  end

  # resources :products, only: [:index, :show]

end

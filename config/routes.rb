Rails.application.routes.draw do
  
  # Users
  post '/signup', to: 'user#create'
  patch '/profile', to: 'user#update'
  put '/profile', to: 'user#update'
  get '/profile', to: 'user#index'

  # Sessions
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :exercise, only: [:create, :index]
  resources :workout, only: [:index, :show]

  # Admin
  namespace :admin do
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'

    resources :workout, only: [:create, :index, :show, :update, :destroy]
    resources :user, only: [:show, :index]
  

    resources :exercise, only: [:create, :index, :show, :update, :destroy]
  end

  resources :workout, only: [:index, :show]

end

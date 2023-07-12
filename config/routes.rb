Rails.application.routes.draw do
  
  #users 
  post  '/signup', to: 'users#create'
  patch '/profile', to: 'users#update'
  put '/profile', to: 'users#update'
  get '/profile', to: 'users#index'

  #sessions 
  post  '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :exercise, only: [:create, :index]
  resources :workout, only: [:index, :show]

  #products
  # resources :products, only: [:index, :show]

  
  #admin
  namespace :admin do 
    post  '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'

    resources :workout, only: [:create, :index, :show, :update, :destroy]
    resources :users, only: [:show, :index] 
    resources :exercise, only: [:index]



    # resources :products, only: [:create, :index, :show, :update, :destroy]
  end  

end


# Rails.application.routes.draw do
#   resources :exercises
#   devise_for :users
#   resources :workouts
#   get '*path', to: 'home#index', constraints: ->(request){ request.format.html? }
#   root 'home#index'
# end

Rails.application.routes.draw do
  
  namespace :admins do
    get 'users/index'
  end

  namespace :admins do
    get 'offers/index'
  end

  namespace :admins do
    get 'requests/index'
  end

  namespace :admins do
    get 'dashboard/index'
  end

  devise_for :admins
  devise_for :users

  resources :requests
  resources :offers

  resources :users do
    get "liftsSharedAsDriver",    to: "users#liftsSharedAsDriver"
  	member do
  		get :requests
  		get :offers
  	end
  end
  root "requests#index"

#####################################################################################
  namespace :admins do
    root to: "dashboard#index"
    get "requests", to: "requests#index" 
    get "requests/:id", to: "requests#show", as: 'request'  
    get "offers", to: "offers#index"
    get "offers/:id", to: "offers#show", as: 'offer'
    get "users", to: "users#index"
    get "users/:id", to: "users#show", as: 'user'  
  end
########################################################################################
end

Rails.application.routes.draw do
  root 'sessions#new'
  
  get '/users' =>'users#index'
  get '/signup' => 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  
  delete '/logout',  to: 'sessions#destroy'
  
  get '/logout' => 'sessions#destroy'
  
  get '/infoPage' => 'users#information'
  
  resources :users

end

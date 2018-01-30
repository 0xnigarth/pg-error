Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'static_pages/home', as: "home"
  
  get 'static_pages/help' , as: "help"
  get  'static_pages/about', as: "about"
  get 'static_pages/contact', as: "contact" 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home', as: "root"
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
end

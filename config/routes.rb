Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'
#  get 'users/index'
#  get 'users/new'
#  get 'static_pages/home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
#  post '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
  resources :users

end

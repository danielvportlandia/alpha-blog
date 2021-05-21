Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  # this is all the routes
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :articles
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  resource :users, except: [:new]
end

Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  # this is all the routes
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :articles
end

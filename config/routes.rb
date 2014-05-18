SocialNetwork::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :friends
  resources :password_resets
  resources :messages

  resources :sessions

  root to: 'sessions#new'
  resources :messages
  resources :likes
  resources :dialogs
  resources :messages
end

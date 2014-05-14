SocialNetwork::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'reset', to: 'passwords#reset', as: 'reset'

  resources :users
  resources :friends
  resources :passwords
  resources :messages

  resources :sessions

  root to: 'sessions#new'
  resources :messages
  resources :likes
  resources :dialogs
  resources :messages
end

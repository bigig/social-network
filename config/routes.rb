SocialNetwork::Application.routes.draw do
  resources :messages


  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :friends

  resources :sessions

  root to: 'messages#index'
  resources :messages
end

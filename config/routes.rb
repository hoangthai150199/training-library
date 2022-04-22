Rails.application.routes.draw do
  root 'users#index'
  resources :books
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
  resources :authors
  namespace :admin do
    resources :publishers
    resources :authors
    resources :categories
  end
  resources :account_activations, only: [:edit]
end

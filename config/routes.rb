Rails.application.routes.draw do
  devise_for :users
  root to: 'collections#new'
  resources :insects, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :collections, only: [:index, :create]
  # resources :collections, only: [:index]
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'insects#new'
  resources :insects, only: [:show, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'collections/challenges',to: 'collections#challenge', as: :challenge
  resources :collections, only: [:index, :create ,:update, :show]

  # resources :collections, only: [:index]
end

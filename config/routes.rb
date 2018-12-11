Rails.application.routes.draw do
  get 'badges/index'
  get 'badges/show'
  devise_for :users
  root to: 'insects#new'
  resources :insects, only: [:show, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :collections, only: [:index, :create ,:update, :show]
  resources :challenges, only: [:show, :index]
  patch '/challenges/:id', to: 'challenges#update', as: :challenge_update

end

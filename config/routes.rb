Rails.application.routes.draw do
  devise_for :users
  root to: 'insects#new'
  resources :insects, only: [:show, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :collections, only: [:index, :create ,:update, :show]
  get 'challenges/leaderboard', to: 'challenges#leaderboard', as: 'leaderboard'
  resources :challenges, only: [:show, :index] do
    resources :achievement_collections, only: [:create]

  end
  # patch '/challenges/:id', to: 'challenges#update', as: :challenge_update

end

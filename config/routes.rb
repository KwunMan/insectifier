Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :insects, only: [:show] do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :collection, only: [:new,:create]
  end
  resources :collection, only: [:index]
end

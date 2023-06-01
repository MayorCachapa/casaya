Rails.application.routes.draw do
  devise_for :users
  root to: "properties#index"

  resources :properties do
    resources :reservations, only: [ :new, :create ]
    resources :favorites, only: [ :create ]
  end
  resources :reservations, only: [ :edit, :update, :destroy, :index ]

  get 'dashboard', to: 'pages#home', as: 'dashboard'
end

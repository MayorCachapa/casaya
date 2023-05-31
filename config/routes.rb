Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :properties do
    resources :reservations, only: :create
  end
  resources :reservations, only: [:edit, :update, :destroy]
end

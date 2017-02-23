Rails.application.routes.draw do
  devise_for :users
  root 'rooms#index'
  resources :rooms do
    resources :bookings, only: :create
  end
  resources :users, only: :show
end

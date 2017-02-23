Rails.application.routes.draw do
  devise_for :users
  root 'rooms#index'
  resources :rooms do
    resources :bookings, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end

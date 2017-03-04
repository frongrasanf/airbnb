Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'rooms#index'
  resources :rooms do
    resources :bookings, only: :create do
      resources :reviews, only: %i[new create]
    end
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end

Rails.application.routes.draw do
  root 'rooms#index'
  resources :rooms do
    resources :bookings, only: %i[new, create]
  end
end

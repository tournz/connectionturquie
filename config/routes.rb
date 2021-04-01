Rails.application.routes.draw do
  get 'bookings/create'
  devise_for :users, controllers: { registrations: 'registrations' }
  root :to => "pages#home"
  resources :bookings, only: [:show, :create]
end

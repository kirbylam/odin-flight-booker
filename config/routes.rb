Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'flights#index'

  resource :flights, only: [:index]
  resources :bookings, only: [:show, :new, :create]

  default_url_options :host => 'localhost:3000'
end

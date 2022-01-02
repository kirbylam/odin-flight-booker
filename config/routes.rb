Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'flights#index'

  resource :bookings, only: [:new]
  resource :flights, only: [:index]
end

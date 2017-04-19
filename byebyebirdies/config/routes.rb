Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :birds
  resources :bird_rental_requests, only: [:new, :create, :index, :show]
end

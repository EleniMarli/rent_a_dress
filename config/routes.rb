Rails.application.routes.draw do
  # root to: "pages#home"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  root to: "dresses#index"
  resources :dresses, only: %i[new create edit update show destroy] do
    resources :bookings, only: %i[new create]
  end
  resources :users, only: :show
  # patch 'bookings/:id/decline', to: 'bookings#decline', as: :decline
  # patch 'bookings/:id/accept', to: 'bookings#accept', as: :accept
  resources :bookings do
    member do
      patch 'accept'
      patch 'decline'
    end
  end
end

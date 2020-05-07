Rails.application.routes.draw do
    # rails routes for gossips:
    root 'home#show'
    resources :home
    resources :contact, only: [:index]
    resources :team, only: [:index]
    resources :gossips
    resources :users
    resources :cities
end

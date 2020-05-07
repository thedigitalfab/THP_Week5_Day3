Rails.application.routes.draw do
    get '/', to: 'home#show'
    
    # rails routes for gossips:
    resources :home
    resources :contact, only: [:index]
    resources :team, only: [:index]
    resources :gossips
    resources :users
end

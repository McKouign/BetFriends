Rails.application.routes.draw do
  devise_for :users
  root to: "matches#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :bets, only: %i[create update destroy]
  resources :rewards, only: %i[index] do
    resources :user_rewards, only: %i[create update]
  end
  resources :squads, only: %i[show]
  resources :users, only: %i[show]
  resources :matches, only: %i[index]
  # Defines the root path route ("/")
  # root "posts#index"
end

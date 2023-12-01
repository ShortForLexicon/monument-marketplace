Rails.application.routes.draw do
  devise_for :users
  root to: "monuments#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :monuments do
    resources :offers, only: [:new, :create, :destroy]
  end
  # get "/monuments", to: "monuments#index"
  # get "/monuments/new", to: "monuments#new"
  # get "/monument/:id", to: "monuments#show", as: :monuments
  # post "/monuments", to: "monuments#create"

  # offers routes. You can create, index, patch/update, and maybe delete.
  # no edit, no show, and no new page
  resources :offers, only: [:index, :destroy, :update]

end

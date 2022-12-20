Rails.application.routes.draw do
  get 'musicians/index'
  devise_for :contractors
  devise_for :musicians
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "musicians#index"

  resources :musicians, only: %i[show]

  resources :contractors, only: %i[index show]

  resourcess :offers, only: %i[index show]
end

Rails.application.routes.draw do
  # get 'pages/home'
  # get 'musicians/index'
  devise_for :contractors
  devise_for :musicians
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "pages#home"

  resources :musicians, only: %i[index show]

  resources :contractors, only: %i[index show]

  resources :offers, only: %i[index show]

  resources :chats, only: :show do
    resources :messages, only: :create
  end
end

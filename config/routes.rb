Rails.application.routes.draw do
  resources :powers
  resources :heros
  resources :hero_powers
  resources :heropowers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

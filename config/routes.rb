Rails.application.routes.draw do
  resources :trainers
  resources :pokemons

  root to: 'home#index'
end

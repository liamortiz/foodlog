Rails.application.routes.draw do
  resources :friends
  resources :entries
  get 'home/about'
  root to: "home#index"
end

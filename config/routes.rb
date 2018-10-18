Rails.application.routes.draw do
  get 'styleguide/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "home#home"

namespace :admin do
  resources :users, :authors, :books, :new
end

resources :authors, only: [:show]
resources :books, only: [:index, :show]
resources :home, only: [:show]

get "styleguide", to: "styleguide#index"
end

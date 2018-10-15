Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "home#index"

namespace :admin do
  resources :users, :authors, :books
end

resources :authors, only: [:show]
resources :books, only: [:index, :show]
resources :home, only: [:show]
end

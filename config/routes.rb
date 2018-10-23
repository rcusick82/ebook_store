Rails.application.routes.draw do
  get 'styleguide/index'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "home#home"

namespace :admin do
  resources :users, :authors, :books, :new
end

resources :authors, only: [:show]
resources :books, only: [:index, :show] do
  resources :sales, only:[:new]
end
resources :home, only: [:show]
resources :users

get "styleguide", to: "styleguide#index"
end

# /books/1/sales/new

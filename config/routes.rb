Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  get 'homes/about' => 'homes#about'
  resources :users, only: [:show, :create, :edit, :index, :update]
  resources :books, only: [:index,:show, :create, :edit, :update, :destroy]
end

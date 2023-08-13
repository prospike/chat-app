Rails.application.routes.draw do
  devise_for :users
  # get 'messages/index' 元々あったもので、いるかもしれないから取っているだけ
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end

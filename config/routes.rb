Rails.application.routes.draw do
  devise_for :users
  # get 'messages/index' 元々あったもので、いるかもしれないから取っているだけ
  root to: "messages#index"
  resources :users, only: [:edit, :update]
end

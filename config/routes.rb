Rails.application.routes.draw do
  resources :stamps
  resources :books
  devise_for :users
  resources :model_stocks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root setting
  root to: "model_stocks#index"
  get "index" => "model_stocks#index"

end

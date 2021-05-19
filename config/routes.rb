Rails.application.routes.draw do
  root to: 'restaurants#index'
  devise_for :users
  resources :restaurants do
    resources :reviews, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

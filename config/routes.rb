Rails.application.routes.draw do
  get 'pins/index'

  devise_for :users, :path => 'accounts'
  root to: 'pins#allpins'

  get 'pins/allpins', to: 'pins#allpins'
  resources :pins, only: [:show]

  resources :users do
    resources :pins, only: [:index, :update, :create]
  end
end

Rails.application.routes.draw do
  get 'pins/index'

  devise_for :users, :path => 'accounts'
  root to: 'pins#allpins'



  get 'pins/allpins', to: 'pins#allpins'
  resources :pins

  resources :users

end

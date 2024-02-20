Rails.application.routes.draw do
  resources :grubs
  root 'home#index'
  get 'home/about'

end

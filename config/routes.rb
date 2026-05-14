Rails.application.routes.draw do
  get "home/index"
  devise_for :users
  root "home#index"
  
  resources :owners
  resources :pets
  resources :vets
  resources :appointments do
    resources :treatments, except: [:index, :show]
  end
  
end
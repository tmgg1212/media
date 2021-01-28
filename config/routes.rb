Rails.application.routes.draw do
  devise_for :users
  root to:"media#index" 
  resources :media, only: [:index, :new, :create]
end

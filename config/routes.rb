Rails.application.routes.draw do
  resources :regions
  resources :municipalities
  root to: 'visitors#index'
end

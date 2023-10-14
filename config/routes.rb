Rails.application.routes.draw do
  resources :channels, only: [:create]
  resources :messages, only: [:create]
end

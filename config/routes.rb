Rails.application.routes.draw do
  resources :cars, only: [:index] 
  root to: 'cars#index'
end


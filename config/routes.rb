Rails.application.routes.draw do

  root to: 'scores#index'

  resources :scores, only: [:index, :create, :update]

end

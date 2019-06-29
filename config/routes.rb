Rails.application.routes.draw do
  get 'users/profile'
  get 'users/configuration'
  devise_for :users
  resources :reviews
  resources :services
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "services#index"

end

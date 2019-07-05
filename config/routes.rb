Rails.application.routes.draw do
    devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
  get 'pages/index'
  get 'users/profile'
  get 'users/configuration'
  resources :reviews
  resources :services
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#index"

end

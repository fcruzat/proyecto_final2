Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
    devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
    }
  get 'pages/index'
  get 'users/profile'
  get 'users/configuration'
  resources :reviews
  resources :services do
    # delete 'delete_image/:photos_id', on: :member, to: 'services#delete_image', as: 'delete_image'
    delete 'delete_image/:photo_id', to:'services#delete_image', as:'delete_image'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#index"

end

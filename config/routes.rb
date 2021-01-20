Rails.application.routes.draw do
  devise_for :users, skip: :all
  devise_scope :user do
    get 'login' => 'devise/sessions#new', as: :new_user_session
    post 'login' => 'devise/sessions#create', as: :user_session
    delete 'logout' => 'devise/sessions#destroy', as: :destroy_user_session
    get 'signup' => 'devise/registrations#new', as: :new_user_registration
    post 'signup' => 'devise/registrations#create', as: :user_registration
    get 'password' => 'devise/passwords#new', as: :new_user_password
    post 'password' => 'devise/passwords#create', as: :user_password
  end
  root to: 'posts#index'
  resources 'posts', only: :index
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'exercises#index'
  resources :exercises, only: :index do
    collection do
      get '/post/:id', to: 'exercises#post'
      get '/tweet/:id', to: 'exercises#tweet'
    end 
  end
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'exercises#index'
  get 'posts/create'
  resources :exercises, only: [:index, :create] do
    collection do
      get '/post/:id', to: 'exercises#post'
      get '/tweet/:id', to: 'exercises#tweet'
    end 
  end
end

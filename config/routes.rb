Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'prototypes#index'

  resources :prototypes do
    resources :comments, only: :create
    collection do
      get 'search'
    end
    collection do
      get 'free_search'
    end
  end
  resources :users do
  end
end

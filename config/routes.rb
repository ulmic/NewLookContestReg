NLCR::Application.routes.draw do
  root to: "welcome#index"
  #resources :public_works, only: :index
  resources :pages, only: :show
  resources :users, only: :create
  resources :errors, only: [] do
    collection do
      get :not_found
    end
  end
  resource :session, only: [:new, :create, :destroy]
  namespace :admin do
    root to: 'users#index'
    resources :users do
      member do
        put :accept
        put :reserve
      end
    end
  end
end

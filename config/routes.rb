NLCR::Application.routes.draw do
  root to: "welcome#index"
  resources :public_works, only: :index
  resources :pages, only: :show
  resources :users do
    member do
      resources :public_works, except: :index
    end
  end
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

NLCR::Application.routes.draw do
  root to: "welcome#index"
  resources :public_works, only: :index
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
  namespace :admin do
    resources :users do
      member do
        put :accept
        put :reserve
      end
    end
  end
end

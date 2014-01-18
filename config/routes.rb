NLCR::Application.routes.draw do
  root to: "welcome#index"

  get "users/upload_resume"

  resources :users do
    member do
      resources :public_works
    end
  end

  match "admin" => "admins#login"
  match "logout" => "admins#logout"
  match "upload" => "users#upload_resume"
  match "upload_r" => "users#upload_r"
  match "success" => "pages#success"
end

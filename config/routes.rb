NLCR::Application.routes.draw do
  resources :public_works

  get "users/upload_resume"  

  resources :users
  
  match "admin" => "admins#login"
  match "logout" => "admins#logout"
  match "upload" => "users#upload_resume"
  match "upload_r" => "users#upload_r"
  match "success" => "pages#success"
end

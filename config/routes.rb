NLCR::Application.routes.draw do
  resources :portfolios


  resources :public_works


  get "users/upload_resume"  

  resources :admins
  resources :users

  match "upload" => "users#upload_resume"
  match "upload_r" => "users#upload_r"
  match "success" => "pages#success"
end

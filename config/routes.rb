Rails.application.routes.draw do
  
  devise_for :users
  root to: "homes#top"
  
  resources :post_images, only: [:new, :index, :show]
  
  get "/homes/about" => "homes#about", as: "about"
  #4-9参照
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
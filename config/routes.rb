Rails.application.routes.draw do
  devise_for :users


  root "home#index"
  get "about" => "pages#about"
  get "contact" => "pages#contact"

  authenticated :user do
   get "dashboard" => "profile#dashboard"
   get "profile" => "profile#index"
  end
  get "up" => "rails/health#show", as: :rails_health_check
end

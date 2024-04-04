Rails.application.routes.draw do
  resources :photographers
  get "up" => "rails/health#show", as: :rails_health_check


end

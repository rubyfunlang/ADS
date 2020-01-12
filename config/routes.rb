Rails.application.routes.draw do
  resources :advertisements
  devise_for :users, controllers: {registrations: "users/registrations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index' 

  namespace :admin do
    resources :users
  end

  namespace :users do
    resources :ad_statuses, only: [:index ,:show]
  end  
end

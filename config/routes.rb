Rails.application.routes.draw do
  devise_for :users
  root :to => 'students#index'
  resources :students

  namespace :admin do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_for :users ,path: 'users' ,controllers: { sessions: "users/sessions"}
  devise_for :admins ,path: 'admins' ,controllers: { sessions: "admins/sessions"}

  resources :products, only: [:index, :show] do
    resources :reviews, only: [:create , :destroy]
  end
  resources :users, only: [:show, :edit, :update]

  resources :categories, only: :show

  root "products#index"

  namespace :admin do
    resources :products
    resources :categories
    root "products#index"
  end

end

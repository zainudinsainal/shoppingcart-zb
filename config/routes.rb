Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_for :users ,path: 'users' ,controllers: { sessions: "users/sessions"}
  devise_for :admins ,path: 'admins' ,controllers: { sessions: "admins/sessions"}

  resources :restaurants, only: [:show]

  resources :products, only: [:index, :show] do

    put 'add_one', on: :member
    put 'remove_from_cart', on: :member
    put 'remove_one', on: :member

    post :favourite
    delete :unfavorite

    resources :reviews, only: [:create, :destroy] do
      post 'like', on: :member, to: 'likes#create'
      delete 'unlike', on: :member, to: 'likes#destroy'
    end
  end

  resources :orders, except: [:edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update]



  resources :categories, only: [:show]

  resource :cart, only: [:show] 

  


  root "products#index"

  namespace :admin do
    resources :products
    resources :categories
    resources :restaurants
    root "products#index"
  end

end

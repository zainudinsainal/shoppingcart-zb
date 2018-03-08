Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_for :users ,path: 'users' ,controllers: { sessions: "users/sessions"}
  devise_for :admins ,path: 'admins' ,controllers: { sessions: "admins/sessions"}

  resources :products, only: [:index, :show] do
    post :favourite
    post :unfavorite
    resources :reviews, only: [:create , :destroy] do
      post 'like', on: :member, to: 'likes#create'
      delete 'unlike', on: :member, to: 'likes#destroy'
    end
  end

  resources :likes

  resources :users, only: [:show, :edit, :update]

  resources :categories, only: :show

  resource :cart, only: [:show] do
    put 'add/:product_id', to: 'carts#add_to_cart', as: :add_to
    put 'remove/:product_id', to: 'carts#remove_from_cart', as: :remove_from
    put 'add_one/:product_id', to: 'carts#add_one', as: :add_one_to
    put 'remove_one/:product_id', to: 'carts#remove_one', as: :remove_one_from
  end

  root "products#index"

  namespace :admin do
    resources :products
    resources :categories
    root "products#index"
  end

end

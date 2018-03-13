Rails.application.routes.draw do

  root "products#index"
  
  devise_for :users ,path: 'users' ,controllers: { sessions: "users/sessions"}
  devise_for :admins ,path: 'admins' ,controllers: { sessions: "admins/sessions"}

  resources :restaurants, only: [:show] do
    resources :follow, only: [:create, :destroy] do
      post 'follow', on: :member, to: 'relationships#create'
      delete 'unfollow', on: :member, to: 'relationships#destroy'
    end
  end

  resources :products, only: [:index, :show] do
    put 'add_one', on: :member
    put 'remove_from_cart', on: :member
    put 'remove_one', on: :member

    post :favourite
    delete :unfavorite

    resources :reviews, only: [:create, :destroy] do
      resources :replies, only: [:new, :create, :destroy] do
        post 'rlike', on: :member, to: 'reply_likes#create'
        delete 'runlike', on: :member, to: 'reply_likes#destroy'
      end
      post 'like', on: :member, to: 'likes#create'
      delete 'unlike', on: :member, to: 'likes#destroy'
    end
  end

  resources :orders, except: [:edit, :update, :destroy]

  resources :users, only: [:show, :edit, :update]

  resources :categories, only: [:show]

  resource :cart, only: [:show] 

  resources :transactions, only: [:new, :create]

  namespace :admin do
    resources :products
    resources :restaurants
    resources :categories, except: [:show, :new]
    resources :orders, only: [:index, :show, :update]
    resources :reviews, only: [:index, :destroy]
    resources :transactions, only: [:index, :show]
    root "products#index"
  end

end

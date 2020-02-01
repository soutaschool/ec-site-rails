Rails.application.routes.draw do
  root 'homes#top'
  resources :items, only: [:index, :show]
  devise_for :end_users
  resources :end_users, only: [:show, :edit, :update]
  get 'end_users/:id', to: 'end_users#confirm'
  resources :cart_items, only: [:index, :update, :destroy, :create]
  delete 'cart_items', to: 'cart_items#destroy_all'
  resources :orders, only: [:new, :create, :index, :show]
  get 'orders/check', to: 'orders#check'
  get 'orders/done', to: 'orders#done'
  resources :addresses, only: [:index, :update, :create, :destroy, :edit]
  
  namespace :admin do
    get 'login', to: 'devise/sessions#new', as: :new_user_session
    post 'login', to: 'devise/sessions#create', as: :user_session
    delete 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session
    get 'top', to: 'admins#top'
    resources :items
    resources :genres, only: [:show, :index, :create, :edit, :update]
    resources :end_users, only: [:index, :show, :update, :edit]
    post 'end_users', to: 'end_users#leave_flag'
    resources :orders, only: [:index, :show, :update]
  end
end

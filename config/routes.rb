Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions:      'admins/devise/sessions',
  }
  devise_for :end_users, controllers: {
    sessions:      'end_users/devise/sessions',
    passwords:     'end_users/devise/passwords',
    registrations: 'end_users/devise/registrations'
  }
  root 'homes#top'
  resources :items, only: [:index, :show]
  resources :end_users, only: [:show, :edit, :update, :destroy]
  get 'end_users/:id', to: 'end_users#confirm'
  resources :cart_items, only: [:index, :update, :destroy, :create]
  delete 'cart_items', to: 'cart_items#destroy_all'
  resources :orders, only: [:new, :create, :index, :show]
  get 'orders/check', to: 'orders#check'
  get 'orders/done', to: 'orders#done'
  resources :addresses, only: [:index, :update, :create, :destroy, :edit]
  
  namespace :admin do
    get 'top', to: 'admins#top'
    resources :items
    resources :genres, only: [:show, :index, :create, :edit, :update]
    resources :end_users, only: [:index, :show, :update, :edit]
    post 'end_users', to: 'end_users#leave_flag'
    resources :orders, only: [:index, :show, :update]
  end
end

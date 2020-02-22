# == Route Map
#
#                       Prefix Verb   URI Pattern                                                                              Controller#Action
#            new_admin_session GET    /admins/sign_in(.:format)                                                                admins/devise/sessions#new
#                admin_session POST   /admins/sign_in(.:format)                                                                admins/devise/sessions#create
#        destroy_admin_session DELETE /admins/sign_out(.:format)                                                               admins/devise/sessions#destroy
#           new_admin_password GET    /admins/password/new(.:format)                                                           devise/passwords#new
#          edit_admin_password GET    /admins/password/edit(.:format)                                                          devise/passwords#edit
#               admin_password PATCH  /admins/password(.:format)                                                               devise/passwords#update
#                              PUT    /admins/password(.:format)                                                               devise/passwords#update
#                              POST   /admins/password(.:format)                                                               devise/passwords#create
#    cancel_admin_registration GET    /admins/cancel(.:format)                                                                 devise/registrations#cancel
#       new_admin_registration GET    /admins/sign_up(.:format)                                                                devise/registrations#new
#      edit_admin_registration GET    /admins/edit(.:format)                                                                   devise/registrations#edit
#           admin_registration PATCH  /admins(.:format)                                                                        devise/registrations#update
#                              PUT    /admins(.:format)                                                                        devise/registrations#update
#                              DELETE /admins(.:format)                                                                        devise/registrations#destroy
#                              POST   /admins(.:format)                                                                        devise/registrations#create
#         new_end_user_session GET    /end_users/sign_in(.:format)                                                             end_users/devise/sessions#new
#             end_user_session POST   /end_users/sign_in(.:format)                                                             end_users/devise/sessions#create
#     destroy_end_user_session DELETE /end_users/sign_out(.:format)                                                            end_users/devise/sessions#destroy
#        new_end_user_password GET    /end_users/password/new(.:format)                                                        end_users/devise/passwords#new
#       edit_end_user_password GET    /end_users/password/edit(.:format)                                                       end_users/devise/passwords#edit
#            end_user_password PATCH  /end_users/password(.:format)                                                            end_users/devise/passwords#update
#                              PUT    /end_users/password(.:format)                                                            end_users/devise/passwords#update
#                              POST   /end_users/password(.:format)                                                            end_users/devise/passwords#create
# cancel_end_user_registration GET    /end_users/cancel(.:format)                                                              end_users/devise/registrations#cancel
#    new_end_user_registration GET    /end_users/sign_up(.:format)                                                             end_users/devise/registrations#new
#   edit_end_user_registration GET    /end_users/edit(.:format)                                                                end_users/devise/registrations#edit
#        end_user_registration PATCH  /end_users(.:format)                                                                     end_users/devise/registrations#update
#                              PUT    /end_users(.:format)                                                                     end_users/devise/registrations#update
#                              DELETE /end_users(.:format)                                                                     end_users/devise/registrations#destroy
#                              POST   /end_users(.:format)                                                                     end_users/devise/registrations#create
#                         root GET    /                                                                                        homes#top
#                        items GET    /items(.:format)                                                                         items#index
#                         item GET    /items/:id(.:format)                                                                     items#show
#                edit_end_user GET    /end_users/:id/edit(.:format)                                                            end_users#edit
#                     end_user GET    /end_users/:id(.:format)                                                                 end_users#show
#                              PATCH  /end_users/:id(.:format)                                                                 end_users#update
#                              PUT    /end_users/:id(.:format)                                                                 end_users#update
#                              DELETE /end_users/:id(.:format)                                                                 end_users#destroy
#                              GET    /end_users/:id(.:format)                                                                 end_users#confirm
#                   cart_items GET    /cart_items(.:format)                                                                    cart_items#index
#                              POST   /cart_items(.:format)                                                                    cart_items#create
#                    cart_item PATCH  /cart_items/:id(.:format)                                                                cart_items#update
#                              PUT    /cart_items/:id(.:format)                                                                cart_items#update
#                              DELETE /cart_items/:id(.:format)                                                                cart_items#destroy
#                              DELETE /cart_items(.:format)                                                                    cart_items#destroy_all
#                       orders GET    /orders(.:format)                                                                        orders#index
#                              POST   /orders(.:format)                                                                        orders#create
#                    new_order GET    /orders/new(.:format)                                                                    orders#new
#                        order GET    /orders/:id(.:format)                                                                    orders#show
#                 orders_check GET    /orders/check(.:format)                                                                  orders#check
#                  orders_done GET    /orders/done(.:format)                                                                   orders#done
#                    addresses GET    /addresses(.:format)                                                                     addresses#index
#                              POST   /addresses(.:format)                                                                     addresses#create
#                 edit_address GET    /addresses/:id/edit(.:format)                                                            addresses#edit
#                      address PATCH  /addresses/:id(.:format)                                                                 addresses#update
#                              PUT    /addresses/:id(.:format)                                                                 addresses#update
#                              DELETE /addresses/:id(.:format)                                                                 addresses#destroy
#                   admins_top GET    /admins/top(.:format)                                                                    admins/admins#top
#                 admins_items GET    /admins/items(.:format)                                                                  admins/items#index
#                              POST   /admins/items(.:format)                                                                  admins/items#create
#              new_admins_item GET    /admins/items/new(.:format)                                                              admins/items#new
#             edit_admins_item GET    /admins/items/:id/edit(.:format)                                                         admins/items#edit
#                  admins_item GET    /admins/items/:id(.:format)                                                              admins/items#show
#                              PATCH  /admins/items/:id(.:format)                                                              admins/items#update
#                              PUT    /admins/items/:id(.:format)                                                              admins/items#update
#                              DELETE /admins/items/:id(.:format)                                                              admins/items#destroy
#                admins_genres GET    /admins/genres(.:format)                                                                 admins/genres#index
#                              POST   /admins/genres(.:format)                                                                 admins/genres#create
#            edit_admins_genre GET    /admins/genres/:id/edit(.:format)                                                        admins/genres#edit
#                 admins_genre GET    /admins/genres/:id(.:format)                                                             admins/genres#show
#                              PATCH  /admins/genres/:id(.:format)                                                             admins/genres#update
#                              PUT    /admins/genres/:id(.:format)                                                             admins/genres#update
#             admins_end_users GET    /admins/end_users(.:format)                                                              admins/end_users#index
#         edit_admins_end_user GET    /admins/end_users/:id/edit(.:format)                                                     admins/end_users#edit
#              admins_end_user GET    /admins/end_users/:id(.:format)                                                          admins/end_users#show
#                              PATCH  /admins/end_users/:id(.:format)                                                          admins/end_users#update
#                              PUT    /admins/end_users/:id(.:format)                                                          admins/end_users#update
#                              POST   /admins/end_users(.:format)                                                              admins/end_users#leave_flag
#                admins_orders GET    /admins/orders(.:format)                                                                 admins/orders#index
#                 admins_order GET    /admins/orders/:id(.:format)                                                             admins/orders#show
#                              PATCH  /admins/orders/:id(.:format)                                                             admins/orders#update
#                              PUT    /admins/orders/:id(.:format)                                                             admins/orders#update
#                   refile_app        /attachments                                                                             #<Refile::App app_file="/home/vagrant/.bundle/ruby/2.5.0/refile-46b4178654e6/lib/refile/app.rb">
#           rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#    rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#           rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#    update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#         rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

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
  
  namespace :admins do
    get 'top', to: 'admins#top'
    resources :items
    resources :genres, only: [:show, :index, :create, :edit, :update]
    resources :end_users, only: [:index, :show, :update, :edit]
    post 'end_users', to: 'end_users#leave_flag'
    resources :orders, only: [:index, :show, :update]
  end
end

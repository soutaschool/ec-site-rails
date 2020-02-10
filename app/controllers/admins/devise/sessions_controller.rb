# frozen_string_literal: true


# 今回の場合deviseを追加しているのでここにdeviseを追加してあげる必要がある
class Admins::Devise::SessionsController < Devise::SessionsController
   before_action :configure_sign_in_params, if: :devise_controller? # only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  def after_sign_in_path_for(resource) 
    admins_items_path
  end

   protected

  # If you have extra params to permit, append them to the sanitizer.

   def configure_sign_in_params
     devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
   end
end

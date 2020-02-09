# frozen_string_literal: true

class EndUsers::Devise::SessionsController < Devise::SessionsController
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  def after_sign_out_path_for(resource)
    end_user_session_path
  end

  # ここの部分でログイン後の遷移先を定義
  def after_sign_in_path_for(resource) 
    end_user_path(resource) 
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
   def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email]) 
  end
end

class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception
private
    def after_sign_in_path_for(resource) 
    end_user_path(resource) 
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:email]) # ログイン時にnameを使用
    end
end


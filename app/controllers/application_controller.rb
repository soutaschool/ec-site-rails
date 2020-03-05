class ApplicationController < ActionController::Base
# before_actionを設定してユーザーとのリダイレクト先を分ける
protected
def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user
      new_user_session_path
    elsif resource_or_scope == :admin
      new_admin_session_path
    else
      root_path
    end
end
end


class EndUsers::EndUsersController < ApplicationController
  def confirm
    @end_user = current_end_user
  end
end

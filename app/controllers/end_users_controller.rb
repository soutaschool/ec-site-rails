class EndUsersController < ApplicationController
    def show
    end

    def edit
        @end_user = EndUser.find(params[:id])
    end

    def index
    end
    
end

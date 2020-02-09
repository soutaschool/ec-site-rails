class EndUsersController < ApplicationController
    def show
        @end_user = EndUser.find(params[:id])
    end

    def edit
        @end_user = EndUser.find(params[:id])
    end

    def index
    end

    def update
		@end_user = EndUser.find(params[:id])
        @end_user.update(end_user_params)
        flash[:notice] = 'successfully'
      	redirect_to end_user_path(@end_user)
    end

    def destroy
        @end_user = EndUser.find(params[:id])
        @end_user.destroy
        flash[:success] = 'ユーザーを削除しました。'
        redirect_to root_path
    end

    private
    def end_user_params
        params.require(:end_user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana,
             :postal_code, :address, :phone_number, :email )
    end

    
end

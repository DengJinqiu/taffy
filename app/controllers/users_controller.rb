class UsersController < ApplicationController
    respond_to :json

    def verify
        @user = login(params[:email], params[:password])
        if @user
            render json: {:id => @user.id, :type => @user.type}
        else
            render nothing: true
        end
    end
end

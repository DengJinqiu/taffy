class UserSessionsController < ApplicationController
  def create
    if @user = login(params[:email], params[:password])
      render json: {:id => @user.id}
    else
      render nothing: true
    end
  end
end

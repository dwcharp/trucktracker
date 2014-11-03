class LoginsController < ApplicationController
  def new
  end

  def create
    @user = User.authentication(params[:user_name], params[:password])
    if @user
      redirect_to :users
    else
      flash.now.alert = "Invalid pass or username"
      render :new
    end
  end


end

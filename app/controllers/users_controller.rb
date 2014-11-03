class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create 
		@user = User.new(user_params)
		if 	@user.save
			redirect_to :action => :show, :id=>@user.user_name
		else
			render 'new'
		end
	end

	def show 
		@user = User.find(params[:id])
    @task = Task.new
  end

  def index
    @users = User.all
  end

	private
		def user_params
			params.require(:user).permit(:user_name, :first_name, :last_name, :password, :user_role)
		end
end

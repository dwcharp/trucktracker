require'DynamoDBService.rb'
class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create 
		@user = User.new(user_params)
		DynamoDBService.create_user(@user)
		redirect_to :action => :show, :id=>@user.user_name
		# if 
		# 	redirect_to :action => :show, :id=>@user.user_id	
		# else
		# 	render 'new'
		# end
	end

	def show 
		@user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

	private
		def user_params
			params.require(:user).permit(:user_name, :first_name, :last_name, :password, :user_role)
		end
end

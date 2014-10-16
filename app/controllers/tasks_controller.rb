require 'DynamoDBService.rb'
class TasksController < ApplicationController
	def new
	end

	def create
		@task = Task.new(task_params)
		DynamoDBService.create_task(@task)
		redirect_to :action => :show, :id=>@task.booking_number
	end

	def show
		@task = Task.find(params[:id])
  end

  def index
    @task = Task.all
  end

	private
		def task_params
			params.require(:task).permit(:booking_number, :equipment_number, :loading_point, :assigned_user)
		end
end

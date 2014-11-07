class TasksController < ApplicationController
	def new
    @task = Task.new
	end

	def create
		@task = Task.new(task_params)
    respond_to do |format|
      format.js
      format.html {redirect_to :action => :show, :id=>@task.booking_number}
      if @task.save
      end
    end
	end

	def show
		@task = Task.find(params[:id])
  end

  def index
    @task = Task.all
  end

  def edit
    respond_to do |format|
      format.js
      format.html
    end
  end

  def update
    @task = Task.find(params[:id])
    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html {redirect_to(@task, :notice => 'Task updated')}
        format.json { head :ok }
      end
    end
  end

	private
		def task_params
			params.require(:task).permit(:booking_number, :equipment_number, :loading_point, :assigned_user)
		end
end

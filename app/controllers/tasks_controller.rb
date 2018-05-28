class TasksController < ApplicationController
  def list
    @tasks = Task.all
  end

  def details
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to details_path(@task)
  end


  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.new(task_params)
    @task.save
    redirect_to details_path(@task)
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to list_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end

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

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

end

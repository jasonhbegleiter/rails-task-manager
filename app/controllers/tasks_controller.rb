class TasksController < ApplicationController
  def list
    @tasks = Task.all
  end

  def details
    @task = Task.find(params[:id])
  end
end

class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def index
    @tasks = Task.all
  end

  def edit
  end

  def show
  end

  def delete
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :deadline, :category, :user_id)
  end
end

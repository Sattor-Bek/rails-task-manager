class TasksController < ApplicationController
before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    @task = task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
    @task.update(params[:task])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params[:task])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
end

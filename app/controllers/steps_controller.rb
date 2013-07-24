class StepsController < ApplicationController

  before_filter :find_task
  before_filter :find_step, :only => [:show, :edit, :update, :destroy]

  def new
    @step = @task.steps.build
  end

  def show

  end

  def create
    @step = @task.steps.build(params[:step])
    if @step.save
      flash[:notice] = "Your step has been added."
      redirect_to [@task, @step]
    else
      # to do
    end
  end

  def edit

  end

  def update
    if @step.update_attributes(params[:step])
      flash[:notice] = "Step has been updated."
      redirect_to [@task, @step]
    else
      flash[:alert] = "Step has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @step.destroy
    flash[:notice] = "This step has been deleted."
    redirect_to @task
  end


  private

    def find_task
      @task = Task.find(params[:task_id])
    end

    def find_step
      @step = @task.steps.find(params[:id])
    end

end

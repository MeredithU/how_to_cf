class StepsController < ApplicationController

  before_filter :find_task

  def new
    @step = @task.steps.build
  end


  private

    def find_task
      @task = Task.find(params[:task_id])
    end

end

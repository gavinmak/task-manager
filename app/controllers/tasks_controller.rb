class TasksController < ApplicationController
    
    def new
    end
    
    def show
        @task = Task.find(params[:id])
    end
    
    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        
        redirect_to '/'
    end
    
    def create
        @task = Task.new(task_params)
        @task.save
        
        redirect_to '/'
    end
    
    def index
        @tasks = Task.all
    end
    
    private
        def task_params
            params.require(:task).permit(:name, :desc)
        end
end

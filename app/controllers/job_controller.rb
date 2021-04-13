class JobsController < ApplicationController
    def list
        @jobs = Jobs.all
    end
    
    def show
        @job = Jobs.find(params[:id])
    end
    
    def new
    end
    
    def create
    end
    
    def edit
    end
    
    def update
    end
    
    def delete
    end
end

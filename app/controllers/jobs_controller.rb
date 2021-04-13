class JobsController < ApplicationController
    def list
        @jobs = Jobs.all
    end
    
    def show
        @job = Jobs.find(params[:id])
    end
    
    def new
        @job = Jobs.new
    end

    def jobs_params
        params.require(:jobs).permit(:position, :company, :kind_of, :salary, :status, :place)
    end
    
    def create
        @job = Jobs.new(job_params)

        if @book.save
            redirect_to :action => 'list'
        else 
            render :action => 'new'
        end
    end
    
    def edit
        @job = Jobs.find(params[:id])
    end

    def job_params
        params.require(:jobs).permit(:position, :company, :kind_of, :salary, :status, :place)
    end
    
    def update
        @job = Jobs.find(params[:id])

        if @job.update_attributes(job_params)
            redirect_to :action => 'show', :id => @job
        else 
            render :action => 'edit'
        end
    end
    
    def delete
        Jobs.find(params[:id]).destroy
        redirect_to :action => 'list'
    end
end

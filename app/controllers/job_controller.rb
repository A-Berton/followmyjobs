class JobController < ApplicationController

    #show a list of jobs
    def list
        @jobs = Job.all
    end
    
    #show a job
    def show
        @job = Job.find(params[:id])
    end
    
    #show the form to create a job
    def new
        @job = Job.new
    end

    def jobs_params
        params.require(:jobs).permit(:position, :company, :kind_of, :salary, :status, :place)
    end
    
    #register a job
    def create
        @job = Job.new(job_params)

        if @job.save
            redirect_to :action => 'list'
        else 
            render :action => 'new'
        end
    end
    
    #edit a job
    def edit
        @job = Job.find(params[:id])
    end

    def job_params
        params.require(:jobs).permit(:position, :company, :kind_of, :salary, :status, :place)
    end
    
    #update a job
    def update
        @job = Job.find(params[:id])

        if @job.update_attributes(job_params)
            redirect_to :action => 'show', :id => @job
        else 
            render :action => 'edit'
        end
    end
    
    #delete a job
    def delete
        Job.find(params[:id]).destroy
        redirect_to :action => 'list'
    end
end

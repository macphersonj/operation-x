class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    
    @search = Job.search(params[:q])
    @jobs = @search.result
    # respond_with(@jobs)
  end

  def show
    respond_with(@job)
  end

  def new
    @job = Job.new
    respond_with(@job)
  end

  def edit
  end

  def create
    @job = Job.new(job_params)
    @job.save
    respond_with(@job)
  end

  def update
    @job.update(job_params)
    respond_with(@job)
  end

  def destroy
    @job.destroy
    respond_with(@job)
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:description, :title, :close_date, :list_snippet)
    end
end

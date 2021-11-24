class JobApplicationsController < ApplicationController

  def index
    @job_applications = JobApplication.all
  end

  def show
    @job_application = JobApplication.find(params[:id])
    @interview = Interview.new(id: @job_application)
  end

  def new
    @job_application = JobApplication.new()
  end

  def create
    @job_application = JobApplication.new(job_application_params)

    if @job_application.save
      redirect_to job_application_path(@job_application)
    else
      render :new
    end
  end

  def edit
    @job_application = JobApplication.find(params[:id])
  end

  def update
    @job_application = JobApplication.find(params[:id])
    @job_application.update(job_application_params)

    redirect_to job_application_path(@job_application)
  end

  private

  def job_application_params
    params.require(:job_application).permit(:title, :level, :company_name, :description, :status, :link, :notes, :address, :remote, :archive,:favorite, :user, :created_at, :updated_at)
  end
end

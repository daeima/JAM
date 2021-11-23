class JobApplicationsController < ApplicationController

  def index
    @job_applications = JobApplication.all
  end

  def show
    @job_applications = JobApplication.find(params[:id])
  end
end

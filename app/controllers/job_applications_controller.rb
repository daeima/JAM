class JobApplicationsController < ApplicationController

  def index
    @job_applications = JobApplication.all
  end

  def show
    @job_application = JobApplication.find(params[:id])
    @interview = Interview.new(id: @job_application)

  end
end

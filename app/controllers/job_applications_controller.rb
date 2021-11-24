class JobApplicationsController < ApplicationController

  def index
    def index
    @job_applications = JobApplication.order(title: :desc)

    if params[:query].present?
      @job_applications = @job_applications.where('title ILIKE ?', "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list.html', locals: { JobApplications: @job_applications } }
    end
    end
  end

  def show
    @job_applications = JobApplication.find(params[:id])
  end
end

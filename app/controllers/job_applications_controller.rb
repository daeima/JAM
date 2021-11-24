class JobApplicationsController < ApplicationController

  def index
    @job_applications = JobApplication.order(title: :desc)

    if params[:query].present?
      sql_query = " \
        job_applications.title ILIKE :query \
        OR job_applications.company_name ILIKE :query \
        OR job_applications.level ILIKE :query \
      "
      @job_applications = @job_applications.where(sql_query, query: "%#{params[:query]}%")
    else
      @job_applications = JobApplication.all
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list.html', locals: { JobApplications: @job_applications } }
    end
  end

  def show
    @job_applications = JobApplication.find(params[:id])
  end
end

class JobApplicationsController < ApplicationController

  def index
    @job_applications = JobApplication.order(title: :desc)
    @job_application_count = JobApplication.group_by_month(:applied, format: "%b").count

    @data_keys = [
      'September',
      'October',
      'November'
    ]

    @data_values = @job_application_count.values
    
    if params[:query].present?
      sql_query = " \
        job_applications.title ILIKE :query \
        OR job_applications.company_name ILIKE :query \
        OR job_applications.level ILIKE :query \
      "

    @job_applications = @job_applications.where(sql_query, query: "%#{params[:query]}%")

    elsif params[:filter].present?
      @job_applications = current_user.job_applications.filter_by_status(params[:filter])

    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list.html', locals: { JobApplications: @job_applications } }
    end
  end

  def statistics
    @job_application = JobApplication.where(status: "Pending").length
  end

  def show
    @job_application = JobApplication.find(params[:id])
    @interview = Interview.new(id: @job_application)


    @markers = [{
      lat: @job_application.latitude,
      lng: @job_application.longitude
    }]
  end

  def new
    @job_application = JobApplication.new()
  end

  def create
    @job_application = JobApplication.new(job_application_params)
    @job_application.user = current_user

    if @job_application.save!
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

  def archive
    @job_application = JobApplication.find(params[:id])
    @job_application.archive = true
    @job_application.save
    redirect_to job_applications_path
  end

  def unarchive
    @job_application = JobApplication.find(params[:id])
    @job_application.archive = false
    @job_application.save
    redirect_to job_applications_path
  end

  def favorite
    @job_application = JobApplication.find(params[:id])
    @job_application.favorite = !@job_application.favorite
    @job_application.save
    redirect_to job_application_path(@job_application)
  end

  private

  def job_application_params
    params.require(:job_application).permit(:title, :level, :company_name, :description, :status, :link, :notes, :address, :remote, :archive,:favorite, :applied, :user, :created_at, :updated_at)
  end





end

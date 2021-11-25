class InterviewsController < ApplicationController

  def index
    @interviews = Interview.all
  end
  
  def new
    @interview = Interview.new
    @job_application = JobApplication.find(params[:job_application_id])
    end

  def create
    @interview = Interview.new(interview_params)
    @interview.job_application = JobApplication.find(params[:job_application_id])
    if @interview.save!
        redirect_to job_application_path(@interview.job_application)
      else
        render :new
    end
  end

  def edit
    @job_application = JobApplication.find(params[:job_application_id])
    @interview = Interview.find(params[:id])
  end

  def update
    @job_application = JobApplication.find(params[:job_application_id])
    @interview = Interview.find(params[:id])
    @interview.update(interview_params)
    redirect_to job_application_path(@job_application)
  end

  
  def destroy
    @job_application = JobApplication.find(params[:job_application_id])
    @interview = Interview.find(params[:id])
    @interview.destroy
    redirect_to job_application_path(@job_application)
  end

  private

  def interview_params
    params.require(:interview).permit(:notes, :start_date, :end_time, :link, :interview_type, :job_application)
  end
 
end









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
        redirect_to interview_path(@interview)
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


  private

  def interview_params
    params.require(:interview).permit(:notes, :start_date, :end_date, :link, :interview_type, :id, :job_application)
  end
 
end









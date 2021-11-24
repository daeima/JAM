
class InterviewsController < ApplicationController

  
  def new
  @interview = Interview.new
  @job_application = JobApplication.find(params[:job_application_id])
  end

  def index
    @interviews = Interview.all
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

  private

  def interview_params
    params.require(:interview).permit(:notes, :start_date, :end_date, :link, :interview_type, :job_application)
  end
 
end









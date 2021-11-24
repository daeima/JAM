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
    @interview.save
    
      @interview.job_application = Venue.find(params[:venue_id])
      if @review.save!
        redirect_to review_path(@review)
      else
        render 'job_application/show'
      end
    end
  
  end

  private

  def interview_params
    params.require(:interview).permit(:notes, :start_date, :end_date, :link, :interview_type, :job_application)
  end
end

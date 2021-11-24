class InterviewsController < ApplicationController
  def show
    @interview = Interview.find(params[:id])
    @contact = Contact.find(params[:id])
  end

  def new
    @interview = Interview.new
    @job_application = JobApplication.find(params[:job_application_id])
  end

  def create
    @interview = Interview.new(interview_params)
    @interview.save
  end

  private

  def interview_params
    params.require(:interview).permit()
  end
end

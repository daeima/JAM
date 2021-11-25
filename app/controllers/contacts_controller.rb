class ContactsController < ApplicationController

  def create
    @interview = Interview.find(params[:interview_id])
    @contact = Contact.new(conatct_params)
    @contact.interview = @interview

    if @contact.save
      redirect_to job_application_path(@interview.job_application)
    else
      render 'job_applications/show'
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @interview = Interview.find(params[:interview_id])
    @contact = JobApplication.find(params[:id])
    @contact.update(contact_params)

    redirect_to job_application_path(@interview.job_application)
  end

  private

  def conatct_params
    params.require(:contact).permit(:first_name, :last_name, :position, :email, :phone, :contact_url, :interview)
  end
end

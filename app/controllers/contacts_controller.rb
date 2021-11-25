class ContactsController < ApplicationController

  def new
    @contact = Contact.new
    @interview = Interview.find(params[:interview_id])
  end

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
    @interview = Interview.find(params[:interview_id])
    @contact = Contact.find(params[:id])
    raise
  end

  def update
    @interview = Interview.find(params[:interview_id])
    @contact = Contact.find(params[:id])
    @contact.update(contact_params)
    @contact.interview = @interview

    redirect_to job_application_path(@interview.job_application)
  end

  def destroy
    @interview = Interview.find(params[:interview_id])
    @contact = Contact.find(params[:id])
    @contact.destroy

    redirect_to job_application_path(@interview.job_application)
  end

  private

  def conatct_params
    params.require(:contact).permit(:first_name, :last_name, :position, :email, :phone, :contact_url, :interview)
  end
end

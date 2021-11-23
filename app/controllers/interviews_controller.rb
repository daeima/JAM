class InterviewsController < ApplicationController
  def show
    @interview = Interview.find(params[:id])
    @contact = Contact.find(params[:id])
  end
end

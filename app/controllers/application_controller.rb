class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # include Pundit

  # # Pundit: white-list approach.
  # after_action :verify_authorized, unless: :skip_pundit?
  # after_action :verify_policy_scoped, unless: :skip_pundit?

  def default_url_options
    { host: ENV["www.j-a-m.xyz"] || "localhost:3000" }
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  # def skip_pundit?
  #   devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  # end
end

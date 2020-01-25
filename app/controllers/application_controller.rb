class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protected

  def current_user
    @current_user ||= User.find_by(id: session[:user])
  end
  helper_method :current_user

  def user_signed_in?
    session[:user].present? ? true : false
  end
  helper_method :user_signed_in?

  def set_ngrok_urls
    if Ngrok::Tunnel.running?
      # Getting current url
      url = Ngrok::Tunnel.ngrok_url_https

      # Variable hash
      default_url_options = {host: url}

      # Overwriting current variables
      Rails.application.config.action_controller.asset_host = url
      Rails.application.config.action_mailer.asset_host = url
      Rails.application.routes.default_url_options = default_url_options
      Rails.application.config.action_mailer.default_url_options = default_url_options
    end
  end

  private

  def authenticate_user!
    return if user_signed_in?

    redirect_to root_path, alert: "You must be signed in to continue."
  end
end

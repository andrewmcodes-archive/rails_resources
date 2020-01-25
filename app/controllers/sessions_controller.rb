class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def create
    # session[:user] = request.env['omniauth.auth'].uid
    session[:user] = User.find_for_omniauth(request.env["omniauth.auth"])
    redirect_to root_path, notice: "Signed In"
  end

  def destroy
    reset_session

    domain = ENV["AUTH0_DOMAIN"]
    client_id = ENV["AUTH0_CLIENT_ID"]
    request_params = {
      returnTo: root_url,
      client_id: client_id,
    }
    url = URI::HTTPS.build(
      host: domain,
      path: "/v2/logout",
      query: to_query(request_params)
    )

    redirect_to url.to_s, notice: "Signed Out"
  end

  def failure
    # show a failure page or redirect to an error page
    @error_msg = request.params["message"]
  end

  private

  def to_query(hash)
    hash.map { |k, v| "#{k}=#{CGI.escape(v)}" unless v.nil? }.reject(&:nil?).join("&")
  end
end

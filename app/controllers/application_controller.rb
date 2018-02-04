class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    redirect_to new_session_path unless sign_in?
  end

  def sign_in?
    session[:current_email].present?
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    redirect_to new_session_path unless sign_in?
  end

  def sign_in?
    current_user.signed_in?
  end

  def sign_in_as(email)
    session[:current_email] = email
  end

  def current_user
    User.new(session[:current_email])
  end
end

class ApplicationController < ActionController::Base
  around_filter :set_current_user
 
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def set_current_user
    User.current_user = User.find_by_id(session[:user_id])
    yield
  ensure
    # to address the thread variable leak issues in Puma/Thin webserver
    User.current_user = nil
  end 
  protected
end

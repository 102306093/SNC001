class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    before_action :configure_permitted_parameters, if: :devise_controller?


   protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Orderlist.find(session[:order_id])
    else
      Orderlist.new
    end
  end
    protected
 def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up)  do |u| u.permit(:username, :email, :password, :password_confirmation, :address, :phone,:current_password) end
    devise_parameter_sanitizer.for(:account_update) do |u| u.permit(:username, :email, :password, :password_confirmation, :address, :phone,:current_password) end
 end
end

class RegistrationsController < Devise::RegistrationsController

  def edit
  @customer = Customer.where('email = ?', current_user.email )
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :admin, :username, :u_convenienceaddress, :u_homeaddress, :u_phone)
  end
end
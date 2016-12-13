class RegistrationsController < Devise::RegistrationsController

  def edit
    if current_user
  @customer = Customer.where('email = ?', current_user.email )
    end
  end
  
  
  def useredit
    @user = User.find(params[:id])
  end
  
  
   def facebook
        @user = User.from_omniauth(request.env["omniauth.auth"])
        session[:user_id] = @user.uid
        sign_in_and_redirect @user
    end
    
	def destroy
		@user=User.find(params[:id])
		@user.destroy
		redirect_to home_management_path
	end
	
  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :admin, :username, :u_convenienceaddress, :u_homeaddress, :u_phone)
  end
    protected
   def after_update_path_for(resource)
      edit_registration_path(resource)
  end
  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end
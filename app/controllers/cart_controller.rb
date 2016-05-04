class CartController < ApplicationController
    def new
    @users=User.all
    if current_user
     
     @address = current_user.address
     @cellphone = current_user.cellphone
    else
     redirect_to new_user_session_path, notice: 'You are not logged in.'
     end
    end

    
    def edit
        
    end
    
    private
     
     def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :address, :cellphone)
     end
end

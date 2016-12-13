class HomeController < ApplicationController
    before_action :authenticate_user!, only: [:management]
	before_action :is_admin?, only: [:management] 
    def index
        @article = Article.all.order('created_at DESC').limit(5)
        set_page_title '首頁'
    end
    def aboutus
        set_page_title '關於我們'
    end
    def policy
        set_page_title '隱私權條款'
    end
    def shipping
        set_page_title '金物流政策'
    end

    def pay
        @payer = Payer.new
    end
    
    def create
		@payer = Payer.new(payer_params)
		if @payer.save
			render :new
		else
			render :new
		end
    end
    def management
    @customer = Customer.all
    @user = User.all
    @product=Product.all
    @article=Article.all
    @payer=Payer.all
    end
    def is_admin?
    	redirect_to root_path unless current_user.admin? 
    end
    private
     def payer_params
        params.require(:payer).permit(:payeraccount,:paymentprice)
     end
     def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :admin, :username, :u_convenienceaddress, :u_homeaddress, :u_phone)
  end
     
end
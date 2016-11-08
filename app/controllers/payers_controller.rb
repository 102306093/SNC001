class PayersController < ApplicationController
    before_action :authenticate_user!, only: [:show]
    def new
        set_page_title '匯款確認'
        
        @payer = Payer.new
        @customer= Customer.all
    if params[:search]
    @customer = Customer.where('cellphone = ?', "#{params[:search]}" )
    
end
    end
    
    def create
		@payer = Payer.new(payer_params)
		if @payer.save
			redirect_to root_path
		else
			render :new
		end
    end
    def show
        	@payer = Payer.all
        	
    end
    def destroy
		@payer=Payer.find(params[:id])
		@payer.destroy
	
	end
    private
     def payer_params
        params.require(:payer).permit(:payeraccount,:paymentprice,:payerphone)
     end
end
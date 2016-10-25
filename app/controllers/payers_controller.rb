class PayersController < ApplicationController

    def new
        @payer = Payer.new
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
    private
     def payer_params
        params.require(:payer).permit(:payeraccount,:paymentprice)
     end
end
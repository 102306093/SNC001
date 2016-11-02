class HomeController < ApplicationController
    def index
        @article = Article.all.order('created_at DESC').limit(5)
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
    def showpayer
        	@payer = Payer.all
    end
    private
     def payer_params
        params.require(:payer).permit(:payeraccount,:paymentprice)
     end
end
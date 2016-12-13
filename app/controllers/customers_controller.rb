class CustomersController < ApplicationController
	before_action :authenticate_user!, only: [:show,:edit,:destroy,:update]
	before_action :is_admin?, only: [:show,:edit,:destroy,:update] 

    def new
        @customer = Customer.new
    end
    
    def create
		@customer = Customer.new(customer_params)
		
		 if @customer.save
			redirect_to products_finish_path
			UserMailer.notify_comment(@customer, @customer).deliver_later!
		else
			render :new
		 
		end

    end
    
    def index
        	@customer = Customer.all
 
    end
    
    def show
        	@customer = Customer.all
    end
    
    def edit
			@customer = Customer.find(params[:id])
	end

	def update
			@customer = Customer.find(params[:id])
		if @customer.update(customer_params)
			redirect_to home_management_path
		else
			render :edit
		end
	end
    def is_admin?
    	redirect_to root_path unless current_user.admin? 
    end
	def destroy
		@customer=Customer.find(params[:id])
		@customer.destroy
		redirect_to show_customers_path
	end
    
    private
     def customer_params
        params.require(:customer).permit(:cusname,:price, :email,:cellphone,:homeaddress,:convenienceaddress,:faceaddress,:productname,:productnumber,:productnumber1,:productnumber2,:productnumber3,:status)
     end
 end
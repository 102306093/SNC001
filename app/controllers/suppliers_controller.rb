class SuppliersController < ApplicationController
    def new
        @supplier = Supplier.new
    end
    
    def create
		@supplier = Supplier.new(supplier_params)
		if @supplier.save
			redirect_to root_path
		else
			render :new
		end
    end
    
    def index
        @supplier=Supplier.all
    end
    
    def show
        @supplier=Supplier.find(params[:id])
    end
    
    def edit
		@supplier=Supplier.find(params[:id])
	end

	def update
		@supplier=Supplier.find(params[:id])
		if @supplier.update(supplier_params)
			redirect_to root_path
		else
			render :edit
		end
	end

	def destroy
		@supplier=Supplier.find(params[:id])
		@supplier.destroy
		redirect_to root_path
	end
    
    private
	def supplier_params
		params.require(:supplier).permit(:supname,:address,:email,:tel,:cellphone,:pic1,:introduce)
	end
end

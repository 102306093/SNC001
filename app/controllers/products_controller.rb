class ProductsController < ApplicationController
before_action :authenticate_user!, only: [:new,:edit,:destroy]
before_action :is_admin?, only: [:new,:edit,:destroy] 
	def finish 
		
		set_page_title '購買確認'
		
    end
    def new
        @product = Product.new
    end
    def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to root_path
		else
			render :new
		end
    end
    
    def buyprod1
      @customer = Customer.new
      if !current_user
        
        @current_user=User.new
        @current_user.username="nothing"
      
      end	
      set_page_title '支持商品'
    end
    
    def index
        @product=Product.all
        set_page_title '商品與故事'
    end
    
    def show
        @product=Product.find(params[:id])
        set_page_title @product.proname
        set_page_description @product.seodescription
    end
    
    def edit
		@product=Product.find(params[:id])
	end

	def update
		@product=Product.find(params[:id])
		if @product.update(product_params)
			redirect_to root_path
		else
			render :edit
		end
	end

	def destroy
		@product=Product.find(params[:id])
		@product.destroy
		redirect_to root_path
	end
    def is_admin?
    	redirect_to root_path unless current_user.admin? 
    end
    private
	def product_params
		params.require(:product).permit(:proname,:price,:qty,:pic1,:introduce,:supid,:seodescription)
	end
	
	
end
class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end
    
    def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to root_path
		else
			render :new
		end
    end
    
    def index
        @article=Article.all
    end
    
    def show
        @article=Article.find(params[:id])
    end
    
    def edit
		@article=Article.find(params[:id])
	end

	def update
		@article=Article.find(params[:id])
		if @article.update(article_params)
			redirect_to root_path
		else
			render :edit
		end
	end

	def destroy
		@article=Article.find(params[:id])
		@article.destroy
		redirect_to root_path
	end
    
    private
	def article_params
		params.require(:article).permit(:title,:introduce,:content,:pic1)
	end
end

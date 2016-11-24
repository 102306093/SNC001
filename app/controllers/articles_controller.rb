class ArticlesController < ApplicationController
	before_action :authenticate_user!, only: [:new,:edit,:destroy]
#	before_action :is_admin?, only: [:new,:edit,:destroy]
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
        @external_article=Article.where(owner: '外界').order('created_at DESC')
        @internal_article=Article.where(owner: '小農橋').order('created_at DESC')
        @article=Article.all
        set_page_title '背後的故事'
    end
    
    def show
        @article=Article.find(params[:id])
        set_page_title @article.title
        set_page_description @article.seodescription
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
    def is_admin?
    	redirect_to root_path unless current_user.admin? 
    end
    private
	def article_params
		params.require(:article).permit(:title,:introduce,:content,:pic1,:owner,:hashtag,:seodescription)
	end
end

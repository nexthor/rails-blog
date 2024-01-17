class ArticlesController < ApplicationController

    def index
        @articles = Article.all
    end

    def read
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(articles_params)

        if @article.save
            redirect_to root_path
        else
            render :new
        end
    end

    private
    def articles_params
        params.require(:article).permit(:title, :content)
    end
end

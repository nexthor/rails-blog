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

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])

        if @article.update!(articles_params)
            redirect_to articles_path
        else
            render :edit
        end
    end

    def delete
        @article = Article.find(params[:id])
        @article.destroy

        redirect_to root_path
    end

    private
    def articles_params
        params.require(:article).permit(:title, :content)
    end
end

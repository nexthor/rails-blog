class ArticlesController < ApplicationController

    def index
        @articles = Article.all
    end

    def read
        @article = Article.find(params[:id])
    end

    def create
        @article = Article.new
    end
end
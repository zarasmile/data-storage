class ArticleRestController < ApplicationController
    def index
        articles = filter_articles
        render json: { status: 'Success', message: 'Loaded articles', data: articles }, status: :ok
    end

    def filter_articles
        Article.where(
          "description ILIKE :query OR 
          title ILIKE :query OR 
          author ILIKE :query",
         query: "%#{params[:search]}%").all 
    end
end
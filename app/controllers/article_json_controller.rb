class ArticleJsonController < JSONAPI::ResourceController
    def index
        article = filter_articles
        render json: article, status: :ok, adapter: :json_api
    end

    def filter_articles
        Article.where(
          "description ILIKE :query OR 
          title ILIKE :query OR 
          author ILIKE :query",
         query: "%#{params[:search]}%").all 
    end
end
require "news-api"

namespace :article do
    desc "Fetch articles"
    task fetch: :environment do
      newsapi = News.new("dd64df5ed84643a9ac78de77d25a2c34")
      today = Date.today.strftime("%Y-%m-%d")
  
      all_articles = newsapi.get_everything(
        sources: "bbc-news",
        from: today.to_s,
        to: today.to_s
      )
  
      all_articles.each do |article|
        Article.create(
          title: article.title,
          description: article.description,
          author: article.author,
          url: article.url,
          url_to_image: article.urlToImage,
          published_at: article.publishedAt
        )
      end
    end
end
Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :articles, types[Types::ArticleType] do
    resolve ->(obj, args, ctx) {
      Article.all
    }
  end
end
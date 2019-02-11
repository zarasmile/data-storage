Types::ArticleType = GraphQL::ObjectType.define do
    name 'ArticleType'
    description ''
    field :title, types.String
    field :description, types.String
    field :content, types.String
    field :author, types.String
    field :url, types.String
    field :url_to_image, types.String
    field :published_at, types.String
  end
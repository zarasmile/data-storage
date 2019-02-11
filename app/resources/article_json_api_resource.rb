class ArticleJsonApiResource < JSONAPI::Resource
    attributes :id, :title, :body
end
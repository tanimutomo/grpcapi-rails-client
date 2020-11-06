# frozen_string_literal: true

require 'grpcs/grpcapi-go-server/article_pb'

class ArticleApi::Article::CreateService < ArticleApi::Article
  def call(title)
    req = Grpcs::GrpcapiGoServer::Article::CreateArticleRequest.new(title: title)
    @service.create_article(req)
  end
end

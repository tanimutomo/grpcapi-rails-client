# frozen_string_literal: true

require 'grpcs/grpcapi-go-server/article_pb'

class ArticleApi::Article::GetService < ArticleApi::Article
  def call(id)
    req = Grpcs::GrpcapiGoServer::Article::GetArticleRequest.new(id: id)
    @service.get_article(req)
  end
end

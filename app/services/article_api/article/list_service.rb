# frozen_string_literal: true

require 'grpcs/grpcapi-go-server/article_pb'

class ArticleApi::Article::ListService < ArticleApi::Article
  def call
    req = Grpcs::GrpcapiGoServer::Article::ListArticlesRequest.new
    @service.list_articles(req)
  end
end

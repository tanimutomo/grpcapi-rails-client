# frozen_string_literal: true

require 'grpcs/grpcapi-go-server/article_services_pb'

class ArticleApi::Article < ArticleApi
  def initialize
    @service = Grpcs::GrpcapiGoServer::Article::ArticleService::Stub.new(HOST, :this_channel_is_insecure)
  end
end

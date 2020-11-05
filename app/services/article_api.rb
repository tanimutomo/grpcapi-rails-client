# frozen_string_literal: true

require 'proto/article_services_pb'

class ArticleApi
  def initialize
    @service = Proto::Article::Article::Stub.new('localhost:50051', :this_channel_is_insecure)
  end
end

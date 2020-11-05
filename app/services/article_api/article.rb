# frozen_string_literal: true

require 'proto/article_services_pb'

class ArticleApi::Article < ArticleApi
  def initialize
    @service = Proto::Article::Article::Stub.new(HOST, :this_channel_is_insecure)
  end
end

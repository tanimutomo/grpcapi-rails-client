# frozen_string_literal: true

require 'proto/article_pb'

class ArticleApi::Article::GetService < ArticleApi::Article
  def call(id)
    req = Proto::Article::GetRequest.new(id: id)
    @service.get(req)
  end
end

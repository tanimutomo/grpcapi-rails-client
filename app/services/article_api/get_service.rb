# frozen_string_literal: true

require 'proto/article_pb'

class ArticleApi::GetService < ArticleApi
  def call(id)
    req = Proto::Article::GetRequest.new(id: id)
    @service.get(req)
  end
end

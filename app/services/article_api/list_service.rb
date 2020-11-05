# frozen_string_literal: true

require 'proto/article_pb'

class ArticleApi::ListService < ArticleApi
  def call
    req = Proto::Article::ListRequest.new
    @service.list(req)
  end
end

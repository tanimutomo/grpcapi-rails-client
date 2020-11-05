# frozen_string_literal: true

require 'proto/article_pb'

class ArticleApi::CreateService < ArticleApi
  def call(title)
    req = Proto::Article::CreateRequest.new(title: title)
    @service.create(req)
  end
end

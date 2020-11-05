# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    articles = ArticleApi::Article::ListService.new.call
    render json: { status: 'SUCCESS', message: 'Loaded articles', data: articles.to_json }
  end

  def show
    article = ArticleApi::Article::GetService.new.call(params[:id].to_i)
    render json: { status: 'SUCCESS', message: 'Loaded the article', data: article.to_json }
  end

  def create
    article = ArticleApi::Article::CreateService.new.call(article_params[:title])
    render json: { status: 'SUCCESS', data: article.to_json }
  end

  private

  def article_params
    params.require(:article).permit(:title)
  end
end

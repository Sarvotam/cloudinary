class Api::V1::ArticlesController < ApplicationController
  
  def index
    render json: Article.all
  end

  def create
    article = Article.new(article_params)
    article.remote_image_url = params[:image]
    article.save
    render json: {title: "success"}
  end

  def destroy
    Article.destroy(params[:id])
  end

  def show
    article = Article.find(params[:id])
    render json: article
  end


 

  def update
    article = Article.find(params[:id])
    article.update_attributes(article_params)
    render json: article
  end

  private
     def article_params
      params.require(:article).permit(:title, :content, :image)
    end
  
end
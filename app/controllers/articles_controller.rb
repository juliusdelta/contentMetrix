class ArticlesController < ApplicationController
  def index
      @article = Article.all
  end

  def show
      @article = Article.find(params[:id])
  end

  def new
      @article = Article.new
  end

  def create

      @article = Article.new(params.require(:article).permit(:title, :link))

      @article.save
      redirect_to @article
  end

  def edit
      @article = Article.find(params[:id])
  end

  def update
  end
end

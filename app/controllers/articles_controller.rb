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
    @article = Article.find(params[:id])
    @article.title = params[:article][:title]
    @article.link = params[:article][:link]
    @article.aasm_state = params[:article][:aasm_state]
  end

  def approve
    @article = Article.find(params[:id])
    @article.approve!
  end

  def write
    @article = Article.find(params[:id])
    @article.write!
  end
  
  def publish
    @article = Article.find(params[:id])
    @article.publish!
  end

end

class ArticlesController < ApplicationController

  def index
    @articles = Articles.all
  end

  def create
    @seminar = Seminar.find(params[:seminar_id])
    @article = Article.create(article_params)
    redirect_to seminar_path(@seminar)
  end

  def update
      article = Article.find(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:comment).merge(seminar_id: params[:seminar_id])
  end

end

class ArticlesController < ApplicationController


  # GET /articles
  # GET /articles.json
  def new
    @article = Article.new
  end


  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
  end



    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:article, :description)
    end
end

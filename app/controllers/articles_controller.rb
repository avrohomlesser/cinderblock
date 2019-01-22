class ArticlesController < ApplicationController


  # GET /articles
  # GET /articles.json
  def new
    @article = Article.new
  end


  def create
      @article = Article.new(article_params)
    if @article.save 
    
      flash[:notice] = "Article was succefully created"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  
  end
def show
@article = Article.find(params[:id])
end
    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:article, :description)
    end
end

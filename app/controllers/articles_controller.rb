class ArticlesController < ApplicationController
before_action :set_article, only: [:edit, :destroy,:show,:update]
  # GET /articles
  # GET /articles.json
  def new
    @article = Article.new
  end

def index
   @articles = Article.paginate(page: params[:page], per_page: 3)
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
end
  
 def edit
 end  
   def update
        if @article.update(article_params)
    
      flash[:notice] = "Article was succefully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
   
 end  
  def destroy
    @article.destroy
    flash[:notice] = "Article was succefully deleted"
    redirect_to articles_path
  end 
  def set_article
     @article = Article.find(params[:id])
  end
    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:article, :description)
    end
end

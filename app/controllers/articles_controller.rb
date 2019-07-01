class ArticlesController < ApplicationController
	 #def new
	 	#@abc = "helo rails world"
 	 #end
 	#  def create
 	#  	#render plain: params[:article].inspect
 	#  	@article = Article.new(params[:article])
 	#  @article.save
 	# redirect_to @article

	 # #@article = Article.new(params.require(:article).permit(:title, :text))	
 	#  end
 	#http_basic_authenticate_with name: "neelam", password: "neelam1", except: [:index, :show]
 
 


 	 def create
 	 @article = Article.new(article_params)
 	 if @article.save
    	 redirect_to @article
     else
    	render 'new'
     end
    end

    def update
 	 @article = Article.find(params[:id])
 
 	 if @article.update(article_params)
     redirect_to @article
 	 else
  	  render 'edit'
  	 end
	end

   def new
   	@article=Article.new
   end
   def edit
 	 @article = Article.find(params[:id])
	end

   def index
    @articles = Article.all
  end	

  def show	
  	@article = Article.find(params[:id])
  end
	#def destroy
	 # @article = Article.find(params[:id])
	 # @article.destroy
 
	 # redirect_to articles_path
	#end

  def geeta
    @article = Article.find(params[:my_article_id])
    @article.destroy
    redirect_to articles_path
  end

private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end


class ArticlesController < ApplicationController

  def index
    @categories = Category.all
    cate = params[:cate]
    if !cate.nil?
      @articles = Article.where(:category_id => cate)
    else
    @articles = Article.all.reverse()
  end
    # render json: @articles
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end        

  def create
    
    @article = Article.new(article_params)
    # binding.pry
    @article.account = current_account
    
    if @article.save
      redirect_to root_path
    else
      render :new, status: :unprocess_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article= Article.find(params[:id])
    if @article.update(article_params)
      redirect_to root_path
      else
        render :edit, status: :unprocess_entity
        end 
  end 

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path, status: :see_other
  end


private

def article_params
  params.require(:article).permit(:title, :body, :avatar, :category_id)
  end

end

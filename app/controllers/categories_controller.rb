class CategoriesController < ApplicationController
  def index
    @categories = Category.all


    # render json: @categories
  end

  def show
     @category = Category.find(params[:id])

  end

  def new
    @category = Category.new
  end

  def create
    
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category
    else
      render :new, status: :unprocess_entity
    end
  end

  def edit
     @category = Category.find(params[:id])
  end

  def update
    @category= Category.find(params[:id])
    if @category.update(category_params)
      redirect_to @category
      else
        render :edit, status: :unprocess_entity
        end 
  end 

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path, status: :see_other
  end


private

def category_params
  params.require(:category).permit(:category)
  end


end

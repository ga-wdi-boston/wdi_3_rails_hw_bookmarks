class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
   @category = Category.find(params[:id])

   if @category.update(category_params)
        flash[:notice] = "Category successfully updated"
        redirect_to @category
    else
      flash.now[:alert] = @category.errors.full_messages.join(', ')
      render :new
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  def show
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)
    if @category.save
        flash[:notice] = "Category successfully created"
        redirect_to @category
    else
      flash.now[:alert] = @category.errors.full_messages.join(', ')
      render :new
    end
  end

  private
  def category_params
    params.require(:category).permit([:name])
  end
end


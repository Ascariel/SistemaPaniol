class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.where("deleted is not ?", true)
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.create!(category_params)
    redirect_to "/categories"
  end

  def update
    @category.update!(category_params)
    redirect_to "/categories"
  end

  def delete_category
    category = Category.find(params[:id])

    if category.products.present?
      return redirect_to "/categories?alert=producto_con_dependencias"
    end
    category.update(deleted: true)
    redirect_to "/categories?alert=element_borrado"
  end

  private

    def set_category
      @category = Category.find(params[:id])
    end


    def category_params
  
      params.require(:category).permit(:nombre, :descripcion)
    end
end

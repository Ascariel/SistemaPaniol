class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.not_deleted
  end

  def product_list
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    @categories = Category.all
  end

  # GET /products/1/edit
  def edit
    @categories = Category.all
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to '/products', notice: 'Producto Creado' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    msg = 'Producto no editado'
    if @product.update(product_params)
      msg = 'Producto editado'  
    end

    return redirect_to "/products", notice: msg
  rescue StandardError => e

    if e.message == "no_se_puede_rebajar_mas_de_lo_que_ya_esta_asignado"
      msg = "No se puede rebajar el Stock Total a una cantidad menor a #{@product.try(:stock_no_disponible)}, ya que esa es la cantidad de productos que aun se encuentran asignados a usuarios"
      edit_url = "/products/#{@product.id}/edit"
      return redirect_to edit_url, notice: msg
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    if @product.cant_be_deleted
      return redirect_to products_url, notice: 'No se puede eliminar un producto con reservas activas'
    end

    @product.update deleted: true

    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Producto Eliminado' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:nombre, :descripcion, :marca, :category_id, :stock_total, :dias_prestamo)
    end
end

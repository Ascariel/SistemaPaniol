class ProductosController < ApplicationController
  def index
    @productos = Producto.all
  end

  def new
  end
end

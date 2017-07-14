class SolicitudProveedorController < ApplicationController
  before_action :authenticate_user!

  def index
    @proveedores = SolicitudProveedor.all
    @products = Product.all
  end
  
	
end

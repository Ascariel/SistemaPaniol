class HomeController < ApplicationController
  def index
    @productos1 = Producto.all.first(3)
    @productos2 = (Producto.all - @productos1).first(3)
  end
end

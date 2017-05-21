class HomeController < ApplicationController
  def index
    @products1 = Product.all.first(3)
    @products2 = (Product.all - @products1).first(3)
  end
end

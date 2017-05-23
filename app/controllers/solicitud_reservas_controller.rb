class SolicitudReservasController < ApplicationController

  def index
    @reservas = SolicitudReserva.all
  end

  def confirmar_reservas
    @reservas = SolicitudReserva.none
    @user = User.alumnos.first
  end

  def create
    @user = User.alumnos.first
    @reservas = []
    products = params[:products]

    selected_products = products.select{|llave, valor| valor.to_i > 0 }
    puts "#{selected_products}"


    selected_products.each do |llave, valor|

      product = Product.find(llave)
      reserva = SolicitudReserva.create(user_id: @user.id, product_id: product.id, productos_solicitados: valor, 
                                        fecha_inicio: DateTime.current, estado: "pendiente")
      @reservas << reserva
    end

    render :confirmar_reservas

  end


end

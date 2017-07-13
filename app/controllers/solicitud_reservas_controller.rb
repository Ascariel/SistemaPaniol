class SolicitudReservasController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @reservas = SolicitudReserva.all
  end

  def confirmar_reservas
    @reservas = SolicitudReserva.none
    @user = User.alumnos.first
  end

  def generar_reserva_admin
    @products = Product.all
    @users = User.pueden_reservar
  end

  def create
    @user = User.find_by(id: params[:user_id]) ||current_user

    if !@user.puede_reservar?
      return redirect_to "/product_list?alert=solo_usuarios_pueden_reservar"
    end

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

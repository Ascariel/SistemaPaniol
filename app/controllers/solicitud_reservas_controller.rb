class SolicitudReservasController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @reservas = SolicitudReserva.all
    @products = Product.all
    @estados = ['pendiente', 'aprobada', 'prestado', 'finalizada', 'rechazada', 'cancelada', 'morosa']
  end

  def reservas_preview
    @user = User.find_by(id: params[:user_id]) || current_user

    if !@user.puede_reservar?
      return redirect_to "/product_list?alert=solo_usuarios_pueden_reservar"
    end

    @reservas = []
    products = params[:products] || session[:products] || []

    products.each do |product_id, cantidad|

      next if cantidad.to_i <= 0

      product = Product.find(product_id)
      
      params_reserva = {
        user_id: @user.id, 
        product_id: product.id, 
        productos_solicitados: cantidad, 
        fecha_inicio: DateTime.current, 
        estado: "pendiente"        
      }

      reserva = SolicitudReserva.new(params_reserva)
      @reservas << reserva
    end

    session[:reservas_sin_confirmar] = @reservas
    session[:products] = products

  end

  def confirmar_reservas
    
    reservas = session[:reservas_sin_confirmar] || []
    return redirect_to "#{current_user.link_generar_reserva}?alert=nada_que_reservar" if reservas.blank?

    reservas.each do |reserva|
      
      product = Product.find(reserva['product_id'])

      if product.stock_disponible == 0
        return redirect_to "#{current_user.link_generar_reserva}?alert=stock_acabado"
      end

      params_reserva = reserva.compact
      reserva = SolicitudReserva.create(params_reserva)
    end    
    redirect_to "#{current_user.link_after_reservar}?alert=reserva_exitosa"

  end

  def generar_reserva_admin
    @products = Product.all
    @users = User.pueden_reservar
  end

  def update_estado_reserva
    reserva = SolicitudReserva.find params[:reserva_id]
    reserva.update(estado: params[:estado])

    if reserva.aprobada?
      UserMailer.notificar_aprobacion_reserva(reserva).deliver_now
    end

    return render json: { success: true, reserva: reserva }
  end

  def cancelar_reserva_por_correo
    reserva = SolicitudReserva.find params[:id]
    reserva.cancelada!
    return redirect_to "/?alert=reserva_cancelada"
  end

  def cancelar_reservas
    session[:reservas_sin_confirmar] = nil
    session[:products] = nil    
    redirect_to "#{current_user.link_generar_reserva}?alert=reserva_cancelada"
  end

  def create
  end


end

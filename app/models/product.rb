class Product < ApplicationRecord
  has_many :solicitud_reservas
  belongs_to :category


  def reservas_activas
    reservas_activas = self.solicitud_reservas.merge(SolicitudReserva.que_reducen_stock)
  end

  def stock_no_disponible
    self.reservas_activas.sum { |reserva| reserva.productos_solicitados }
  end

  def stock_disponible
    self.stock_total - self.stock_no_disponible
  end  

  def puede_generar_reservas?
    puts "Stock Disponible Para Reservas: #{self.stock_disponible}"
    self.stock_disponible > 0
  end


end

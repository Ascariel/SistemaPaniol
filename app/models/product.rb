class Product < ApplicationRecord
  has_many :solicitud_reservas
  has_many :product_details, dependent: :destroy
  belongs_to :category

  before_save :validar_stock
  scope :not_deleted, lambda { where("deleted IS NOT true") }

  def reservas_activas
    reservas_activas = self.solicitud_reservas.merge(SolicitudReserva.que_reducen_stock)
  end

  def reservas_prestadas
    self.solicitud_reservas.merge(SolicitudReserva.prestado)
  end

  def stock_no_disponible
    # Que esta prestado o reservado
    self.reservas_activas.sum { |reserva| reserva.productos_solicitados }
  end

  def stock_disponible
    # Que se puede prestar
    self.stock_total - self.stock_no_disponible
  end  

  def stock_prestado
    # Suma todo lo entregado para cada reserva que esta activamente prestada
    self.reservas_prestadas.sum { |reserva| reserva.productos_solicitados }
  end

  def puede_generar_reservas?
    self.stock_disponible > 0
  end

  def stock_en_bodega
    # Que no ha sifo prestado aun, existe fisicamente en la bodega
    self.stock_total - self.stock_prestado
  end

  def validar_stock
    stock_asignado = self.stock_no_disponible

    if self.stock_total < stock_asignado
      raise "no_se_puede_rebajar_mas_de_lo_que_ya_esta_asignado"
    end
  end

  def cant_be_deleted
    self.stock_no_disponible > 0
  end
end

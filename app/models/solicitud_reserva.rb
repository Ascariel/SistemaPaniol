class SolicitudReserva < ApplicationRecord
  belongs_to :user
  belongs_to :product


  before_save :actualizar_fecha_termino




  def actualizar_fecha_termino
    self.fecha_termino = self.fecha_inicio + self.product.dias_prestamo.days
  end


end

class SolicitudReserva < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_one :provider_request

  enum estado: [:pendiente, :aprobada, :prestado, :finalizada, :rechazada, :cancelada, :morosa]

  before_save :actualizar_fecha_termino

  scope :que_reducen_stock, lambda { where(estado: ["pendiente", "aprobada", "prestado"]) }

  validates :productos_solicitados, presence: true


  def color_texto_estado
    if self.aprobada? || self.prestado?
      'text-success'
    elsif self.pendiente?
      "text-warning"
    elsif self.rechazada? || self.cancelada? || self.morosa?
      "text-danger"
    elsif self.finalizada?
      "text-info"
    else
      ""
    end
  end

  def actualizar_fecha_termino
      self.fecha_inicio = self.fecha_inicio || DateTime.current
      self.fecha_termino = self.fecha_inicio + self.product.dias_prestamo.days
  rescue StandardError => e
    puts "\n\nError en actualizar_fecha_termino #{e.message}\n\n"
  end


end

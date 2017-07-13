class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :solicitud_reservas

  before_create :set_rol

  validates :rut, :email, uniqueness: true
  validates :email, :rut, presence: true


  def puede_reservar?
    return ['alumno', 'profesor'].include?(self.rol)
  end

  def nombre_completo
    "#{self.nombre.try(:capitalize)} #{self.apellido.try(:capitalize)}"
  end

  def set_rol
    self.rol = self.rol || "alumno" 
  end

  def email_changed?
    false
  end  

  def reservas_activas
    self.solicitud_reservas.merge(SolicitudReserva.que_reducen_stock)
  end

  def link_generar_reserva
    if self.rol == "admin"
      return "/generar_reserva_admin"
    else
      return "/product_list"
    end
  end

  def link_after_reservar
    if self.rol == "admin"
      return "/solicitud_reservas"
    else
      return "/users/#{self.id}"
    end
  end

  def self.admins
    return User.where("rol = 'admin' ")
  end

  def self.alumnos
    return User.where(" rol = 'alumno' ")
  end

  def self.profesores
    return User.where(" rol = 'profesor' ")
  end  

  def self.pueden_reservar
    return User.alumnos.or(User.profesores)
  end


  # REORTES

  def self.prestamos_mes_periodo(fecha_inicio = nil, fecha_termino = nil)
    fecha_inicio ||= DateTime.current.beginning_of_month
    fecha_termino ||= DateTime.current.end_of_month

    SolicitudReserva.prestado.where("fecha_inicio >= ? and fecha_termino <= ?", fecha_inicio, fecha_termino)
  end

  def self.asignaciones_mes_periodo(fecha_inicio = nil, fecha_termino = nil)
    fecha_inicio ||= DateTime.current.beginning_of_month
    fecha_termino ||= DateTime.current.end_of_month

    SolicitudReserva.que_reducen_stock.where("fecha_inicio >= ? and fecha_termino <= ?", fecha_inicio, fecha_termino)
  end  


  def self.reset_data
    raise if !Rails.env.development?
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean
  end  

end

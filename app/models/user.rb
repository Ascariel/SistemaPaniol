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

end

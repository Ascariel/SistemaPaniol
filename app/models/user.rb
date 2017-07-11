class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :solicitud_reservas

  before_create :set_rol

  validates :rut, :email, uniqueness: true
  validates :email, :rut, presence: true


  def self.admins
    return User.where("rol = 'admin' ")
  end

  def self.alumnos
    return User.where(" rol = 'alumno' ")
  end

  def set_rol
    self.rol = self.rol || "alumno" 
  end

  def email_changed?
    false
  end  

end

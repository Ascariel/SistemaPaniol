class User < ApplicationRecord
  has_many :solicitud_reservas


  def self.admins
    return User.where("rol = 'admin' ")
  end

  def self.alumnos
    return User.where(" rol = 'alumno' ")
  end

end

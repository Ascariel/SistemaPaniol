class UserMailer < ApplicationMailer
  default from: "#{Rails.env.production? ? 'p.cangas@alumnos.duoc.cl' : 'reservas_duoc@example.com'}"

  def test(msg = "Mensaje de Prueba",subject = "Probando Mailer", receiver = "p.cangas@alumnos.duoc.cl")
    @msg = msg
    mail(to: receiver, subject: subject)
  end     

  def notificar_aprobacion_reserva(reserva)
    
    @reserva = reserva
    @product = reserva.product
    @user = reserva.user
    
    mail(
         to: @user.email, 
         subject: "Solicitud de Reserva Aprobada"
       )

  end
end

class UserMailer < ApplicationMailer
  default from: 'p.cangas@alumnos.duoc.cl'

  def test(msg = "Mensaje de Prueba",subject = "Probando Mailer", receiver = "p.cangas@alumnos.duoc.cl")
    @msg = msg
    mail(to: receiver, subject: subject)
  end     
end

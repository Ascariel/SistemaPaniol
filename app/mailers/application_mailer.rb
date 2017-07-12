class ApplicationMailer < ActionMailer::Base
  default from: 'p.cangas@alumnos.duoc.cl'
  layout 'mailer'

  def test(msg = "Mensaje de Prueba",subject = "Probando Mailer", receiver = "p.cangas@alumnos.duoc.cl")
    @msg = msg
    mail(to: receiver, subject: subject)
  end    

end

class ApplicationMailer < ActionMailer::Base
  default from: "#{Rails.env.production? ? 'p.cangas@alumnos.duoc.cl' : 'reservas_duoc@example.com'}"
  layout 'mailer'

  def test(msg = "Mensaje de Prueba",subject = "Probando Mailer", receiver = "p.cangas@alumnos.duoc.cl")
    @msg = msg
    mail(to: receiver, subject: subject)
  end    

end

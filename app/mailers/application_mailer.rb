class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def test(msg = "Mensaje de Prueba",subject = "Probando Mailer", receiver = "pablocangas@gmail.com")
    @msg = msg
    mail(to: receiver, subject: subject)
  end    

end

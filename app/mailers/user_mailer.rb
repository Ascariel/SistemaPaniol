class UserMailer < ApplicationMailer

  def test(msg = "Mensaje de Prueba",subject = "Probando Mailer", receiver = "pablocangas@gmail.com")
    @msg = msg
    mail(to: receiver, subject: subject)
  end     
end

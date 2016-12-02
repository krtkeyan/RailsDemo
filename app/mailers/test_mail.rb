class TestMail < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.test_mail.send_mail.subject
  #
  def send_mail
    @greeting = "Hi"

    mail to: "karthikepsilon@gmail.com", subject: "Test Mail From Rails"
  end
end

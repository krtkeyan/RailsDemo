# Preview all emails at http://localhost:3000/rails/mailers/test_mail
class TestMailPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/test_mail/send_mail
  def send_mail
    TestMail.send_mail
  end

end

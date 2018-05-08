class ContactMailer < ApplicationMailer
    def send_contact_email(user_info)
        recipient = ENV.fetch('MAILGUN_EMAIL')
        @email = user_info[:email]
        @name = user_info[:name]
        @message = user_info[:message]
        date = Time.now.strftime("%d %b -  %H:%M")
        subject = "New Contact Form #{date}"
        mail(to: recipient, subject: subject)
  end
end

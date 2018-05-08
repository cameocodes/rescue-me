class ApplyMailer < ApplicationMailer
    def send_application(user_application)
        recipient = user_application[:rescue_email]
        @email = user_application[:email]
        @first_name = user_application[:first_name]
        @last_name = user_application[:last_name] 
        @email = user_application[:email] 
        @suburb = user_application[:suburb]
        @state = user_application[:state]
        @postcode = user_application[:postcode]
        @house_members = user_application[:house_members]
        @other_animals = user_application[:other_animals]
        @hours_alone = user_application[:hours_alone]
        @comments = user_application[:comments]
        @pet = user_application[:pet]
        date = Time.now.strftime("%d %b -  %H:%M")
        subject = "#{@pet.name} Application - #{date}"
        mail(to: recipient, subject: subject)
  end
end

class Postman < ActionMailer::Base
  default from: "robco74@gmail.com"

  def form_email(to, subject, body)
    @body = body
    mail(:to => to, :subject => "Re: #{subject}")
  end
end

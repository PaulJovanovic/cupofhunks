class UserMailer < ActionMailer::Base
  default from: "info@cupofhunks.com"

  def send_email
    mail(:to => "mikebrando@comcast.net", :subject => "Let me know if you are gay...?! #gay")
	end

  def welcome_email(user)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end

  def receive(email)
    # page = Page.find_by_address(email.to.first)
    # page.emails.create(
    #   :subject => email.subject,
    #   :body => email.body
    # )
 
    # if email.has_attachments?
    #   email.attachments.each do |attachment|
    #     page.attachments.create({
    #       :file => attachment,
    #       :description => email.subject
    #     })
    #   end
    # end
  end
end

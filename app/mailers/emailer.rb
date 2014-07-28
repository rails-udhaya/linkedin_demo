class Emailer < ActionMailer::Base
    default from: "udhayakumar.dhanabalan@gmail.com"
    
  def check_email(to_which,subj)
    	if Rails.env != "development"
    @url_checked = to_which
    @subject = subj
    mail(:to => "udhayakumar.dhanabalan@gmail.com", :subject => @subject)
  end
  end
  
end

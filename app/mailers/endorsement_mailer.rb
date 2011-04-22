class EndorsementMailer < ActionMailer::Base
  default :from => "mail@percorch.com"
  default_url_options[:host] = "localhost:3000"
  

  def notify(endorsement)
    @endorsement = endorsement
    mail(:to => "mail@percorch.com",
         :subject => "New endorsement",
         :from => endorsement.email)   
  end
end

class EndorsementMailer < ActionMailer::Base
  

  def message(endorsement)
    
    body       :message => endorsement
    subject    "New endorsement"
    recipients "mail@percorch.com"
    from       endorsement.email
    sent_on    Time.now
    
   
  end

end

class WorkRequestMailer < ActionMailer::Base
  

  def message(work_request)
    
    body       :message => work_request
    subject    "New work request"
    recipients "mail@percorch.com"
    from       work_request.email
    sent_on    Time.now
    
   
  end
end

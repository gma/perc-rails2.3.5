class WorkRequestMailer < ActionMailer::Base
    default :from => "mail@percorch.com"
    default_url_options[:host] = "localhost:3000"


    def notify(work_request)
      @work_request = work_request
      mail(:to => "mail@percorch.com",
           :subject => "New Work Request",
           :from => work_request.email)   
    end
  end

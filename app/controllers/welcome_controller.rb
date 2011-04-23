class WelcomeController < ApplicationController
  
  def about
    @pagetitle = "About Percussion Orchestrations" 
  end
  
  def cheque
    @pagetitle = "Pay By Cheque" 
  end
  
  def contact
    @pagetitle = "Percussion Orchestrations Contact Page" 
  end
  
  def credit_card
    @pagetitle = "Pay By Credit Card" 
  end
  
  def credit_transfer
    @pagetitle = "Pay By Direct Credit Transfer" 
  end
  
  def dollars
    @pagetitle = "Pay In Dollars" 
  end 
  
  def dollars_trial
    @pagetitle = "Pay In Dollars" 
  end 
   
  def ed
    @pagetitle = "About Ed Cervenka" 
  end
  
  def endorsements
    @pagetitle = "Percussion Orchestrations Endorsements" 
  end

  def euros
    @pagetitle = "Pay In Euros" 
  end 

  def euros_trial
    @pagetitle = "Pay In Euros" 
  end  

  def free_trial
    @pagetitle = "Percussion Orchestrations Free Trial" 
  end 
  
  def home
    @pagetitle = "Percussion Orchestrations Homepage"
  end 
  
  def join
    @pagetitle = "Join Percussion Orchestrations" 
  end 
   
  def links
    @pagetitle = "Percussion Orchestrations Links" 
  end  
     
  def members_login
    @pagetitle = "Members Login Page" 
  end
  
  def member_orchestras
    @pagetitle = "Percussion Orchestrations Member Orchestras" 
  end

  def pounds
    @pagetitle = "Pay In Pounds Sterling" 
  end 

  def pounds_trial
    @pagetitle = "Pay In Pounds Sterling" 
  end  
  
  def privacy_policy
    @pagetitle = "Percussion Orchestrations Privacy Policy" 
  end 

  def subscription_rates
    @pagetitle = "Percussion Orchestrations Subscription Rates" 
  end 
  
  def terms
    @pagetitle = "Percussion Orchestrations Terms & Conditions" 
  end
  
end

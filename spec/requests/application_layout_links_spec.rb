require 'spec_helper'

describe "ApplicationLayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Percussion Orchestrations Homepage")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About Percussion Orchestrations")
  end
  
  it "should have a Cheque page at '/cheque'" do
    get '/cheque'
    response.should have_selector('title', :content => "Pay By Cheque")
  end
  
  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Percussion Orchestrations Contact Page")
  end
  
  it "should have a Credit Card page at '/credit_card'" do
    get '/credit_card'
    response.should have_selector('title', :content => "Pay By Credit Card")
  end
  
  it "should have a Credit Transfer page at '/credit_transfer'" do
    get '/credit_transfer'
    response.should have_selector('title', :content => "Pay By Direct Credit Transfer")
  end
  
  it "should have a Dollars page at '/dollars'" do
    get '/dollars'
    response.should have_selector('title', :content => "Pay In Dollars")
  end
  
  it "should have a Dollars Trial page at '/dollars_trial'" do
    get '/dollars_trial'
    response.should have_selector('title', :content => "Pay In Dollars")
  end
  
  it "should have a Ed page at '/ed'" do
    get '/ed'
    response.should have_selector('title', :content => "About Ed Cervenka")
  end
  
  it "should have a Endorsements page at '/endorsements'" do
    get '/endorsements'
    response.should have_selector('title', :content => "Percussion Orchestrations Endorsements")
  end
  
  it "should have a Euros page at '/euros'" do
    get '/euros'
    response.should have_selector('title', :content => "Pay In Euros")
  end
  
  it "should have a Euros Trial page at '/euros_trial'" do
    get '/euros_trial'
    response.should have_selector('title', :content => "Pay In Euros")
  end
  
  it "should have a Free Trial page at '/free_trial'" do
    get '/free_trial'
    response.should have_selector('title', :content => "Percussion Orchestrations Free Trial")
  end
  
  it "should have a Join page at '/join'" do
    get '/join'
    response.should have_selector('title', :content => "Join Percussion Orchestrations")
  end
  
  it "should have a links page at '/links'" do
    get '/links'
    response.should have_selector('title', :content => "Percussion Orchestrations Links")
  end
  
  it "should have a Member Orchestras page at '/member_orchestras'" do
    get '/member_orchestras'
    response.should have_selector('title', :content => "Percussion Orchestrations Member Orchestras")
  end
  
  it "should have a Pounds page at '/pounds'" do
    get '/pounds'
    response.should have_selector('title', :content => "Pay In Pounds Sterling")
  end
  
  it "should have a Pounds Trial page at '/pounds_trial'" do
    get '/pounds_trial'
    response.should have_selector('title', :content => "Pay In Pounds Sterling")
  end
  
  it "should have a Privacy Policy page at '/privacy_policy'" do
    get '/privacy_policy'
    response.should have_selector('title', :content => "Percussion Orchestrations Privacy Policy")
  end
  
  it "should have a Subscription Rates page at '/subscription_rates'" do
    get '/subscription_rates'
    response.should have_selector('title', :content => "Percussion Orchestrations Subscription Rates")
  end
  
  it "should have a Terms and Conditions page at '/terms'" do
    get '/terms'
    response.should have_selector('title', :content => "Percussion Orchestrations Terms & Conditions")
  end
end

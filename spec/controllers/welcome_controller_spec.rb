require 'spec_helper'

describe WelcomeController do
  render_views
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end 
  
  describe "GET 'cheque'" do
    it "should be successful" do
      get 'cheque'
      response.should be_success
    end
  end
  
  describe "GET 'credit_card'" do
    it "should be successful" do
      get 'credit_card'
      response.should be_success
    end
  end  
 
  describe "GET 'credit_transfer'" do
    it "should be successful" do
      get 'credit_transfer'
      response.should be_success
    end
  end

  describe "GET 'dollars'" do
    it "should be successful" do
      get 'dollars'
      response.should be_success
    end
  end
  

  describe "GET 'dollars_trial'" do
    it "should be successful" do
      get 'dollars_trial'
      response.should be_success
    end
  end
  

  describe "GET 'ed'" do
    it "should be successful" do
      get 'ed'
      response.should be_success
    end
  end
  
  describe "GET 'endorsements'" do
    it "should be successful" do
      get 'endorsements'
      response.should be_success
    end
  end
  
  describe "GET 'euros'" do
    it "should be successful" do
      get 'euros'
      response.should be_success
    end
  end
  
  describe "GET 'euros_trial'" do
    it "should be successful" do
      get 'euros_trial'
      response.should be_success
    end
  end
  
  describe "GET 'free_trial'" do
    it "should be successful" do
      get 'free_trial'
      response.should be_success
    end
  end
      
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end
  
  describe "GET 'join'" do
    it "should be successful" do
      get 'join'
      response.should be_success
    end
  end
  
  describe "GET 'links'" do
    it "should be successful" do
      get 'links'
      response.should be_success
    end
  end
  
  describe "GET 'member_orchestras'" do
    it "should be successful" do
      get 'member_orchestras'
      response.should be_success
    end
  end
  
  describe "GET 'pounds'" do
    it "should be successful" do
      get 'pounds'
      response.should be_success
    end
  end
  
  describe "GET 'pounds_trial'" do
    it "should be successful" do
      get 'pounds_trial'
      response.should be_success
    end
  end
  
  describe "GET 'privacy_policy'" do
    it "should be successful" do
      get 'privacy_policy'
      response.should be_success
    end
  end
  
  describe "GET 'subscription_rates'" do
    it "should be successful" do
      get 'subscription_rates'
      response.should be_success
    end
  end
  
  describe "GET 'terms'" do
    it "should be successful" do
      get 'terms'
      response.should be_success
    end
  end
  
end


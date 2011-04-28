require 'spec_helper'

describe Endorsement do
  
  before(:each) do
    @attr = { :name => "Example Name", :email => "example@example.com", :job_title => "Example job title", :body => "Example message of endorsement" }
  end
    
  it "should create a new instance given valid attributes" do
    Endorsement.create!(@attr)
  end  

  it "should require a name" do
    no_name_endorsement = Endorsement.new(@attr.merge(:name => ""))
    no_name_endorsement.should_not be_valid
  end
    
  it "should require an email address" do
    no_email_endorsement = Endorsement.new(@attr.merge(:email => ""))
    no_email_endorsement.should_not be_valid
  end  
  
  it "should require a job title" do
    no_job_title_endorsement = Endorsement.new(@attr.merge(:job_title => ""))
    no_job_title_endorsement.should_not be_valid
  end
  
  it "should require a message" do
    no_body_endorsement = Endorsement.new(@attr.merge(:body => ""))
    no_body_endorsement.should_not be_valid
  end
  
  it "should accept valid email addresses" do
    addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
    addresses.each do |address|
      valid_email_user = Endorsement.new(@attr.merge(:email => address))
      valid_email_user.should be_valid
    end
  end

  it "should reject invalid email addresses" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    addresses.each do |address|
      invalid_email_user = Endorsement.new(@attr.merge(:email => address))
      invalid_email_user.should_not be_valid
    end
  end 
end
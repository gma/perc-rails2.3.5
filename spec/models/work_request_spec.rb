require 'spec_helper'

describe WorkRequest do
  
  before(:each) do
    @attr = { :name => "Example Name", :email => "edcervenka@yahoo.com", :job_title => "Example job title", :composer_name => "Example composer name", :work_name => "Example work name", :date => "Example date" }
  end

  it "should create a new instance given valid attributes" do
    WorkRequest.create!(@attr)
  end

  it "should require a name" do
    no_name_work_request = WorkRequest.new(@attr.merge(:name => ""))
    no_name_work_request.should_not be_valid
  end
    
  it "should require an email address" do
    no_email_work_request = WorkRequest.new(@attr.merge(:email => ""))
    no_email_work_request.should_not be_valid
  end  
  
  it "should require a job title" do
    no_job_title_work_request = WorkRequest.new(@attr.merge(:job_title => ""))
    no_job_title_work_request.should_not be_valid
  end
  
  it "should require a composer name" do
    no_composer_name_work_request = WorkRequest.new(@attr.merge(:composer_name => ""))
    no_composer_name_work_request.should_not be_valid
  end
  
  it "should require a work name" do
    no_work_name_work_request = WorkRequest.new(@attr.merge(:work_name => ""))
    no_work_name_work_request.should_not be_valid
  end  
  
  it "should require a date" do
    no_date_work_request = WorkRequest.new(@attr.merge(:date => ""))
    no_date_work_request.should_not be_valid
  end  
  
  
end
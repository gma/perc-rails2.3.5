require 'spec_helper'

describe NoPerc do
  
  before(:each) do
      @attr = { :composer_name => "Example Composer", :work_name => "Example Work name" }
    end

  it "should require a composer name" do
    no_name_composer_name = NoPerc.new(@attr.merge(:composer_name => ""))
    no_name_composer_name.should_not be_valid
    end
    
  it "should require a work name" do
    no_name_work_name = NoPerc.new(@attr.merge(:work_name => ""))
    no_name_work_name.should_not be_valid
  end    
    
end
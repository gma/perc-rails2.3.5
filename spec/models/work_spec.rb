require 'spec_helper'

describe Work do
  
  before(:each) do
      @attr = { :composer_id => "1", :work_name => "Example Work name" }
  end

  it "should require a composer id" do
    no_composer_id_work = Work.new(@attr.merge(:composer_id => ""))
    no_composer_id_work.should_not be_valid
  end

  it "should require a work name" do
    no_work_name_work = Work.new(@attr.merge(:work_name => ""))
    no_work_name_work.should_not be_valid
  end
end
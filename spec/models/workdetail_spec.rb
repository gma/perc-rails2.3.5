require 'spec_helper'

describe Workdetail do
  
  before(:each) do
      @attr = { :work_id => "1", :movement_id => "1" }
  end

  it "should require a work id" do
    no_work_id_workdetail = Workdetail.new(@attr.merge(:work_id => ""))
    no_work_id_workdetail.should_not be_valid
  end

  it "should require a movement id" do
    no_movement_id_workdetail = Workdetail.new(@attr.merge(:movement_id => ""))
    no_movement_id_workdetail.should_not be_valid
  end
end
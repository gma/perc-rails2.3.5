require 'spec_helper'

describe Composer do
  
  before(:each) do
      @attr = { :composer_name => "Example Composer" }
    end

  it "should require a composer name" do
      no_name_composer_name = Composer.new(@attr.merge(:composer_name => ""))
      no_name_composer_name.should_not be_valid
    end
end
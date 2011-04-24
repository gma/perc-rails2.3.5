require 'spec_helper'

describe InstrumentTranslation do
  
  before(:each) do
      @attr = { :instrument_name => "Example Name", :description => "Example description" }
    end

  it "should require a name" do
    no_instrument_name_instrument_translation = InstrumentTranslation.new(@attr.merge(:instrument_name => ""))
    no_instrument_name_instrument_translation.should_not be_valid
  end
    
  it "should require description" do
    no_description_instrument_translation = InstrumentTranslation.new(@attr.merge(:description => ""))
    no_description_instrument_translation.should_not be_valid
  end
  
end  
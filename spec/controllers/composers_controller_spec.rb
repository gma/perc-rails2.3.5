require 'spec_helper'

describe ComposersController do
  render_views
  
  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end
  
  describe "GET 'show'" do
    
    before(:each) do
      @composer = Factory(:composer)
    end
    
    it "should be successful" do
      get :show, :id => @composer
      response.should be_success
    end
    
    it "should find the right composer" do
      get :show, :id => @composer   
      assigns(:composer).should == @composer
    end    
  end 
end  
require 'spec_helper'

describe EndorsementsController do
  render_views
  
  describe "GET 'new" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end  
end
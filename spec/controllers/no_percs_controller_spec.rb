require 'spec_helper'

describe NoPercsController do
  render_views
  
  describe "GET 'no_percs#index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end
end    
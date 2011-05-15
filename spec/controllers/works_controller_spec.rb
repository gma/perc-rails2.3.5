require 'spec_helper'

describe WorksController do
  extend ActiveMembersHelpers

  render_views

  before(:each) do
    @work = Factory.create(:work)
    Factory.create(:workdetail, :work => @work)
  end

  def get_show
    get :show, :id => @work
  end

  describe "GET 'show'" do
    should_require_active_members :get_show
  end
end  

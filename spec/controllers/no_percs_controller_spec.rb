require 'spec_helper'

describe NoPercsController do
  extend ActiveMembersHelpers

  render_views
  
  def get_index
    get :index
  end

  describe "GET 'index'" do
    should_require_active_members :get_index
  end
end    

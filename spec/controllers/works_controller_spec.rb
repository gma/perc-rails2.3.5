require 'spec_helper'

describe WorksController do
  render_views

  before(:each) do
    @work = Factory.create(:work)
    Factory.create(:workdetail, :work => @work)
  end

  def get_show
    get :show, :id => @work
  end

  describe "GET 'show'" do
    it "should render successfully" do
      get_show
      response.should be_success
    end

    describe "when multiple instruments are played" do
      before(:each) do
        @bells = Factory.create(:instrument, :name => 'Bells')
        @crotales = Factory.create(:instrument, :name => 'Crotales')
        @work.instruments << @bells
        @work.instruments << @crotales
      end

      it "should list the instruments used" do
        get_show
        response.body.should have_selector('h2', :content => @bells.name)
        response.body.should have_selector('h2', :content => @crotales.name)
      end
    end
  end
end  
  

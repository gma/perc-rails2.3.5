require "paginate_alphabetically"

class NoPercsController < ApplicationController
  before_filter :require_active_user
  
  def index
    @no_percs = NoPerc.alphabetical_group(params[:letter])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @no_percs }
    end
  end
end

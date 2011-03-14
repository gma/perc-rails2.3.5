require "paginate_alphabetically"

class NoPercsController < ApplicationController
  layout "database"
  # GET /no_percs
  # GET /no_percs.xml
  def index
    @no_percs = NoPerc.all
    @no_percs = NoPerc.alphabetical_group(params[:letter])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @no_percs }
    end
  end

end

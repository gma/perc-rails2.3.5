require "paginate_alphabetically"

class InstrumentTranslationsController < ApplicationController
  before_filter :require_active_user

  layout "works"

  def index
    @instrument_translations = InstrumentTranslation.alphabetical_group(params[:letter])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @instrument_translations }
    end
  end
  
end

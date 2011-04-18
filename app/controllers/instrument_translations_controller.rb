require "paginate_alphabetically"

class InstrumentTranslationsController < ApplicationController
  layout "works"
  # GET /instrument_translations
  # GET /instrument_translations.xml
  def index
    #@instrument_translations = InstrumentTranslation.all
    @instrument_translations = InstrumentTranslation.alphabetical_group(params[:letter])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @instrument_translations }
    end
  end
  
end

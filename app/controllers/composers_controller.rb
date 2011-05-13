require "paginate_alphabetically"
  
  
class ComposersController < ApplicationController
 # before_filter :active_user, :only => [:index, :show]
  
  # GET /composers
  # GET /composers.xml
  def index
    @composers = Composer.alphabetical_group(params[:letter])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @composers }
    end
  end

  # GET /composers/1
  # GET /composers/1.xml
  def show
    @composer = Composer.find(params[:id])
    @works = @composer.works.order("work_order_id")
    @work = @composer.works.order.first

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @composer }
    end
  end

   

  
  
end

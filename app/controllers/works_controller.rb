class WorksController < ApplicationController
  
  # GET /works/1
  # GET /works/1.xml
   def show
     
     @work = Work.find(params[:id])
     @workdetails = @work.workdetails.find(:all, :order => 'movement_id')
     @workdetail = @work.workdetails.find(:first)
     respond_to do |format|
       format.html # show.html.erb
       format.xml  { render :xml => @work }
     end
   end


end

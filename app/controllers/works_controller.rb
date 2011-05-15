class WorksController < ApplicationController
  before_filter :require_active_user

   def show
     @work = Work.find(params[:id])
     @current_user.searches << Search.new(:work_id => @work.id)
     @workdetails = @work.workdetails.order("movement_id")
 
     @workdetail = @work.workdetails.order.first
     respond_to do |format|
       format.html # show.html.erb
       format.xml  { render :xml => @work }
     end
   end
end

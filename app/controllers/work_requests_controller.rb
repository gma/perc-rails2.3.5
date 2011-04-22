class WorkRequestsController < ApplicationController
  layout "composers"
  # GET /work_requests
  # GET /work_requests.xml
  def index
    @work_requests = WorkRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @work_requests }
    end
  end

  # GET /work_requests/1
  # GET /work_requests/1.xml
  def show
    @work_request = WorkRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @work_request }
    end
  end

  # GET /work_requests/new
  # GET /work_requests/new.xml
  def new
    @work_request = WorkRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @work_request }
    end
  end

  # GET /work_requests/1/edit
  def edit
    @work_request = WorkRequest.find(params[:id])
  end

  # POST /work_requests
  # POST /work_requests.xml
  def create
    @work_request = WorkRequest.new(params[:work_request])

    respond_to do |format|
      if @work_request.save
        WorkRequestMailer.notify(@work_request).deliver
        flash[:message] = 'Thankyou for your work request which is displayed below'
        format.html { redirect_to(@work_request) }
        format.xml  { render :xml => @work_request, :status => :created, :location => @work_request }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @work_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /work_requests/1
  # PUT /work_requests/1.xml
  def update
    @work_request = WorkRequest.find(params[:id])

    respond_to do |format|
      if @work_request.update_attributes(params[:work_request])
        flash[:notice] = 'WorkRequest was successfully updated.'
        format.html { redirect_to(@work_request) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @work_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /work_requests/1
  # DELETE /work_requests/1.xml
  def destroy
    @work_request = WorkRequest.find(params[:id])
    @work_request.destroy

    respond_to do |format|
      format.html { redirect_to(work_requests_url) }
      format.xml  { head :ok }
    end
  end
end

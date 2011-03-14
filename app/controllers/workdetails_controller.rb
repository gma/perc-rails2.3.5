class WorkdetailsController < ApplicationController
  # GET /workdetails
  # GET /workdetails.xml
  def index
    @workdetails = Workdetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workdetails }
    end
  end

  # GET /workdetails/1
  # GET /workdetails/1.xml
  def show
    @workdetail = Workdetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @workdetail }
    end
  end

  # GET /workdetails/new
  # GET /workdetails/new.xml
  def new
    @workdetail = Workdetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @workdetail }
    end
  end

  # GET /workdetails/1/edit
  def edit
    @workdetail = Workdetail.find(params[:id])
  end

  # POST /workdetails
  # POST /workdetails.xml
  def create
    @workdetail = Workdetail.new(params[:workdetail])

    respond_to do |format|
      if @workdetail.save
        flash[:notice] = 'Workdetail was successfully created.'
        format.html { redirect_to(@workdetail) }
        format.xml  { render :xml => @workdetail, :status => :created, :location => @workdetail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @workdetail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /workdetails/1
  # PUT /workdetails/1.xml
  def update
    @workdetail = Workdetail.find(params[:id])

    respond_to do |format|
      if @workdetail.update_attributes(params[:workdetail])
        flash[:notice] = 'Workdetail was successfully updated.'
        format.html { redirect_to(@workdetail) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workdetail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workdetails/1
  # DELETE /workdetails/1.xml
  def destroy
    @workdetail = Workdetail.find(params[:id])
    @workdetail.destroy

    respond_to do |format|
      format.html { redirect_to(workdetails_url) }
      format.xml  { head :ok }
    end
  end
end

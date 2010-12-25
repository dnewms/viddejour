class PromotersController < ApplicationController
  # GET /promoters
  # GET /promoters.xml

  def index
    @promoters = Promoter.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @promoters }
    end
  end


  # GET /promoters/1
  # GET /promoters/1.xml
  def show
    @promoter = Promoter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @promoter }
    end
  end

  # GET /promoters/new
  # GET /promoters/new.xml
  def new
    @promoter = Promoter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @promoter }
    end
  end

  # GET /promoters/1/edit
  def edit
    @promoter = Promoter.find(params[:id])
  end

  # POST /promoters
  # POST /promoters.xml
  def create
    @promoter = Promoter.new(params[:promoter])

    respond_to do |format|
      if @promoter.save
        format.html { redirect_to(@promoter, :notice => 'Promoter was successfully created.') }
        format.xml  { render :xml => @promoter, :status => :created, :location => @promoter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @promoter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /promoters/1
  # PUT /promoters/1.xml
  def update
    @promoter = Promoter.find(params[:id])

    respond_to do |format|
      if @promoter.update_attributes(params[:promoter])
        format.html { redirect_to(@promoter, :notice => 'Promoter was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @promoter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /promoters/1
  # DELETE /promoters/1.xml
  def destroy
    @promoter = Promoter.find(params[:id])
    @promoter.destroy

    respond_to do |format|
      format.html { redirect_to(promoters_url) }
      format.xml  { head :ok }
    end
  end
end

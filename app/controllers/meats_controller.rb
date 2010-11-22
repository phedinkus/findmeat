class MeatsController < ApplicationController
  def index
    if params[:q]
     query = params[:q]
     @search = Meat.search do
       keywords query
     end
     @meats = @search.results
    else
      @meats = Meat.all
    end
  end

  # GET /meats/1
  # GET /meats/1.xml
  def show
    @meat = Meat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @meat }
    end
  end

  # GET /meats/new
  # GET /meats/new.xml
  def new
    @meat = Meat.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @meat }
    end
  end

  # GET /meats/1/edit
  def edit
    @meat = Meat.find(params[:id])
  end

  # POST /meats
  # POST /meats.xml
  def create
    @meat = Meat.new(params[:meat])

    respond_to do |format|
      if @meat.save
        format.html { redirect_to(@meat, :notice => 'Meat was successfully created.') }
        format.xml  { render :xml => @meat, :status => :created, :location => @meat }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @meat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /meats/1
  # PUT /meats/1.xml
  def update
    @meat = Meat.find(params[:id])

    respond_to do |format|
      if @meat.update_attributes(params[:meat])
        format.html { redirect_to(@meat, :notice => 'Meat was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @meat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /meats/1
  # DELETE /meats/1.xml
  def destroy
    @meat = Meat.find(params[:id])
    @meat.destroy

    respond_to do |format|
      format.html { redirect_to(meats_url) }
      format.xml  { head :ok }
    end
  end
end

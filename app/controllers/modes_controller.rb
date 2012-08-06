class ModesController < ApplicationController
 
  # GET /modes
  # GET /modes.xml
  def index
    @mode = Mode.find(:first, :conditions => { :active => 1 } )
    if @mode.nil?
    	@mode = Mode.find(:first)
   	end
    redirect_to :action => "edit", :id => @mode.id
  end
  
  def scheduling
  end

  # GET /modes/1
  # GET /modes/1.xml
  def show
    @modes = Mode.all
    @mode = Mode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mode }
    end
  end

  # GET /modes/new
  # GET /modes/new.xml
  def new
    @modes = Mode.all
    @mode = Mode.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mode }
    end
  end
  
  def new_from_existing
  	existing_mode = Mode.find(params[:existing_mode_id])
  	@mode = Mode.new(existing_mode.attributes)
  	@mode.name = "New Preset from #{existing_mode.name}"
    @modes = Mode.all
		render :action => "new"
  end

  # GET /modes/1/edit
  def edit
    @modes = Mode.all
    @mode = Mode.find(params[:id])
  end

  # POST /modes
  # POST /modes.xml
  def create
    @mode = Mode.new(params[:mode])

    respond_to do |format|
      if @mode.save
        flash[:notice] = 'Your New Preset was successfully created.'
        format.html { redirect_to :action => "edit", :id => @mode }
        format.xml  { render :xml => @mode, :status => :created, :location => @mode }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mode.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /modes/1
  # PUT /modes/1.xml
  def update
    @mode = Mode.find(params[:id])

    respond_to do |format|
      if @mode.update_attributes(params[:mode])
        flash[:notice] = "Your changes to the #{@mode.name} Preset have been saved."
        format.html { redirect_to(:action => "edit", :id => @mode) }
        format.xml  { head :ok }
      else
        flash[:notice] = "There was an errors saving your changes.  Please try again."
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mode.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /modes/1
  # DELETE /modes/1.xml
  def destroy
    @mode = Mode.find(params[:id])
    name = @mode.name
    @mode.destroy

    respond_to do |format|
      flash[:notice] = "The #{name} Preset was successfully deleted."
      format.html { redirect_to :controller => "modes" }
      format.xml  { head :ok }
    end
  end
end

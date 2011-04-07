class FthreadsController < ApplicationController
  # GET /fthreads
  # GET /fthreads.xml
  def index
    @fthreads = Fthread.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fthreads }
    end
  end

  # GET /fthreads/1
  # GET /fthreads/1.xml
  def show
    @fthread = Fthread.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fthread }
    end
  end

  # GET /fthreads/new
  # GET /fthreads/new.xml
  def new
    @fthread = Fthread.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fthread }
    end
  end

  # GET /fthreads/1/edit
  def edit
    @fthread = Fthread.find(params[:id])
  end

  # POST /fthreads
  # POST /fthreads.xml
  def create
    @subforum=Subforum.find(params[:subforum_id])
    #@fthread = Fthread.new(params[:fthread])
    @fthread= @subforum.fthreads.create(params[:fthread])

    redirect_to subforum_path(@subforum)

    #respond_to do |format|
    # if @fthread.save
    #    format.html { redirect_to(@fthread, :notice => 'Fthread was successfully created.') }
    #    format.xml  { render :xml => @fthread, :status => :created, :location => @fthread }
    #  else
    #   format.html { render :action => "new" }
    #    format.xml  { render :xml => @fthread.errors, :status => :unprocessable_entity }
    #  end
    #end
  end

  # PUT /fthreads/1
  # PUT /fthreads/1.xml
  def update
    @fthread = Fthread.find(params[:id])

    respond_to do |format|
      if @fthread.update_attributes(params[:fthread])
        format.html { redirect_to(@fthread, :notice => 'Fthread was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fthread.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fthreads/1
  # DELETE /fthreads/1.xml
  def destroy
    @fthread = Fthread.find(params[:id])
    @fthread.destroy

    respond_to do |format|
      format.html { redirect_to(fthreads_url) }
      format.xml  { head :ok }
    end
  end
end

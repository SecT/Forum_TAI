class SubforumsController < ApplicationController
  # GET /subforums
  # GET /subforums.xml
  def index
    @subforums = Subforum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subforums }
    end
  end

  # GET /subforums/1
  # GET /subforums/1.xml
  def show
    @subforum = Subforum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subforum }
    end
  end

  # GET /subforums/new
  # GET /subforums/new.xml
  def new
    @subforum = Subforum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subforum }
    end
  end

  # GET /subforums/1/edit
  def edit
    @subforum = Subforum.find(params[:id])
  end

  # POST /subforums
  # POST /subforums.xml
  def create
    @subforum = Subforum.new(params[:subforum])

    respond_to do |format|
      if @subforum.save
        format.html { redirect_to(@subforum, :notice => 'Subforum was successfully created.') }
        format.xml  { render :xml => @subforum, :status => :created, :location => @subforum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subforum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subforums/1
  # PUT /subforums/1.xml
  def update
    @subforum = Subforum.find(params[:id])

    respond_to do |format|
      if @subforum.update_attributes(params[:subforum])
        format.html { redirect_to(@subforum, :notice => 'Subforum was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subforum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subforums/1
  # DELETE /subforums/1.xml
  def destroy
    @subforum = Subforum.find(params[:id])
    @subforum.destroy

    respond_to do |format|
      format.html { redirect_to(subforums_url) }
      format.xml  { head :ok }
    end
  end
end

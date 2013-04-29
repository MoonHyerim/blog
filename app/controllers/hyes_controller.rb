class HyesController < ApplicationController
  # GET /hyes
  # GET /hyes.json
  def index
    @hyes = Hye.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hyes }
    end
  end

  # GET /hyes/1
  # GET /hyes/1.json
  def show
    @hye = Hye.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hye }
    end
  end

  # GET /hyes/new
  # GET /hyes/new.json
  def new
    @hye = Hye.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hye }
    end
  end

  # GET /hyes/1/edit
  def edit
    @hye = Hye.find(params[:id])
  end

  # POST /hyes
  # POST /hyes.json
  def create
    @hye = Hye.new(params[:hye])

    respond_to do |format|
      if @hye.save
        format.html { redirect_to @hye, notice: 'Hye was successfully created.' }
        format.json { render json: @hye, status: :created, location: @hye }
      else
        format.html { render action: "new" }
        format.json { render json: @hye.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hyes/1
  # PUT /hyes/1.json
  def update
    @hye = Hye.find(params[:id])

    respond_to do |format|
      if @hye.update_attributes(params[:hye])
        format.html { redirect_to @hye, notice: 'Hye was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hye.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hyes/1
  # DELETE /hyes/1.json
  def destroy
    @hye = Hye.find(params[:id])
    @hye.destroy

    respond_to do |format|
      format.html { redirect_to hyes_url }
      format.json { head :no_content }
    end
  end
end

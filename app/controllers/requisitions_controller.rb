class RequisitionsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  # GET /requisitions
  # GET /requisitions.json
  def index
    @requisitions = Requisition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @requisitions }
    end
  end

  # GET /requisitions/1
  # GET /requisitions/1.json
  def show
    @requisition = Requisition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @requisition }
      format.xml { render xml: @requisitions }
    end
  end

  # GET /requisitions/new
  # GET /requisitions/new.json
  def new
    @requisition = Requisition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @requisition }
    end
  end

  # GET /requisitions/1/edit
  def edit
    @requisition = Requisition.find(params[:id])
  end

  # POST /requisitions
  # POST /requisitions.json
  def create
    @requisition = Requisition.new(params[:requisition])

    respond_to do |format|
      if @requisition.save
        format.html { redirect_to @requisition, notice: 'Requisition was successfully created.' }
        format.json { render json: @requisition, status: :created, location: @requisition }
      else
        format.html { render action: "new" }
        format.json { render json: @requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /requisitions/1
  # PUT /requisitions/1.json
  def update
    @requisition = Requisition.find(params[:id])

    respond_to do |format|
      if @requisition.update_attributes(params[:requisition])
        format.html { redirect_to @requisition, notice: 'Requisition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requisitions/1
  # DELETE /requisitions/1.json
  def destroy
    @requisition = Requisition.find(params[:id])
    @requisition.destroy

    respond_to do |format|
      format.html { redirect_to requisitions_url }
      format.json { head :no_content }
    end
  end
end

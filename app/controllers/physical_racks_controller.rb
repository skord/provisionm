class PhysicalRacksController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  layout "where"
  # GET /physical_racks
  # GET /physical_racks.json
  def index
    @building = building
    @physical_racks = building.physical_racks.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @physical_racks }
    end
  end

  # GET /physical_racks/1
  # GET /physical_racks/1.json
  def show
    @building = building
    @physical_rack = building.physical_racks.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @physical_rack }
    end
  end

  # GET /physical_racks/new
  # GET /physical_racks/new.json
  def new
    @building = building
    @physical_rack = building.physical_racks.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @physical_rack }
    end
  end

  # GET /physical_racks/1/edit
  def edit
    @building = building
    @physical_rack = building.physical_racks.find(params[:id])
  end

  # POST /physical_racks
  # POST /physical_racks.json
  def create
    @building = building
    @physical_rack = building.physical_racks.new(params[:physical_rack])

    respond_to do |format|
      if @physical_rack.save
        format.html { redirect_to building_physical_rack_path(@building.id, @physical_rack), notice: 'Physical rack was successfully created.' }
        format.json { render json: @physical_rack, status: :created, location: @physical_rack }
      else
        format.html { render action: "new" }
        format.json { render json: @physical_rack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /physical_racks/1
  # PUT /physical_racks/1.json
  def update
    @building = building
    @physical_rack = PhysicalRack.find(params[:id])

    respond_to do |format|
      if @physical_rack.update_attributes(params[:physical_rack])
        format.html { redirect_to building_physical_rack_path(@building.id, @physical_rack), notice: 'Physical rack was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @physical_rack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physical_racks/1
  # DELETE /physical_racks/1.json
  def destroy
    @building = building
    @physical_rack = building.physical_racks.find(params[:id])
    @physical_rack.destroy

    respond_to do |format|
      format.html { redirect_to building_physical_racks_url(building) }
      format.json { head :no_content }
    end
  end
  
  protected
  
  def building
    Building.find(params[:building_id])
  end
end

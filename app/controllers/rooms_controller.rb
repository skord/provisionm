class RoomsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  layout "where"
  # GET /rooms
  # GET /rooms.json
  def index
    @building = building
    @rooms = building.rooms

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rooms }
    end
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
    @building = building
    @room = building.rooms.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @room }
    end
  end

  # GET /rooms/new
  # GET /rooms/new.json
  def new
    @building = building
    @room = building.rooms.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @room }
    end
  end

  # GET /rooms/1/edit
  def edit
    @building = building
    @room = building.rooms.find(params[:id])
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @building = building
    @room = building.rooms.new(params[:room])

    respond_to do |format|
      if @room.save
        format.html { redirect_to building_room_path(building.id, @room.id), notice: 'Room was successfully created.' }
        format.json { render json: @room, status: :created, location: @room }
      else
        format.html { render action: "new" }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rooms/1
  # PUT /rooms/1.json
  def update
    @building = building
    @room = building.rooms.find(params[:id])

    respond_to do |format|
      if @room.update_attributes(params[:room])
        format.html { redirect_to building_room_path(building.id, @room.id), notice: 'Room was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @building = building
    @room = building.rooms.find(params[:id])
    @room.destroy

    respond_to do |format|
      format.html { redirect_to building_rooms_url }
      format.json { head :no_content }
    end
  end
  
  protected
  
  def building
    Building.find(params[:building_id])
  end
end

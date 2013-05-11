class TripDestinationsController < ApplicationController
  # GET /trip_destinations
  # GET /trip_destinations.json
  def index
    @trip_destinations = TripDestination.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trip_destinations }
    end
  end

  # GET /trip_destinations/1
  # GET /trip_destinations/1.json
  def show
    @trip_destination = TripDestination.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trip_destination }
    end
  end

  # GET /trip_destinations/new
  # GET /trip_destinations/new.json
  def new
    @trip_destination = TripDestination.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trip_destination }
    end
  end

  # GET /trip_destinations/1/edit
  def edit
    @trip_destination = TripDestination.find(params[:id])
  end

  # POST /trip_destinations
  # POST /trip_destinations.json
  def create
    @trip_destination = TripDestination.new(params[:trip_destination])

    respond_to do |format|
      if @trip_destination.save
        format.html { redirect_to @trip_destination, notice: 'Trip destination was successfully created.' }
        format.json { render json: @trip_destination, status: :created, location: @trip_destination }
      else
        format.html { render action: "new" }
        format.json { render json: @trip_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trip_destinations/1
  # PUT /trip_destinations/1.json
  def update
    @trip_destination = TripDestination.find(params[:id])

    respond_to do |format|
      if @trip_destination.update_attributes(params[:trip_destination])
        format.html { redirect_to @trip_destination, notice: 'Trip destination was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trip_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_destinations/1
  # DELETE /trip_destinations/1.json
  def destroy
    @trip_destination = TripDestination.find(params[:id])
    @trip_destination.destroy

    respond_to do |format|
      format.html { redirect_to trip_destinations_url }
      format.json { head :no_content }
    end
  end
end

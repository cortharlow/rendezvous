class DestinationsController < ApplicationController

  before_filter :authorize

  def index
    @destinations = Destination.all
  end

  def new
    @destination = Destination.new
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def create
    @destination = Destination.new(destination_params)
    @destination.itinerary_id = params[:itinerary_id]

    if @destination.save
      redirect_to @destination.itinerary
    else
      render "new"
    end
  end

  def update
    @destination = Destination.find(params[:id])

    if @destination.update(destination_params)
      redirect_to @destination.itinerary
    else
      render "edit"
    end
  end

  def destroy
    @destination = Destination.find(params[:id])
    redirect_to @destination.itinerary
    @destination.destroy #Set to nil for sessions, not objects
  end

  private

  def destination_params
    params.require(:destination).permit(
      :itinerary_id,
      :city,
      :country,
      :num_of_days
    )
  end
end
